require_relative 'dsl_data'
require_relative 'state'

class DslSeeder

  def initialize(data = nil, &dsl_proc)
    @dsl_proc = if block_given? 
      dsl_proc 
    else
      data || DslData.data
    end
  end

  def run(&dsl_proc)
    dsl_proc = @dsl_proc unless block_given?
    instance_eval(&dsl_proc)
    @first
  end

  # DSL root's functions
  # --------------------

  def first(state_name, &block)
    state = State.new(state_name)
    state.instance_eval(&block)
    raise 'DSL: Did not define a start date in the first step' unless state.start_date?
    @first = state
    @previous = @first    
  end

  def step(state_name, &block)
    state = State.new(state_name)
    state.instance_eval(&block)
    state.prev_state = @previous
    @previous = state
  end


  # Tools to revert the database into the dsl format that you can execute with run
  def self.generate_dsl_from_db(db)
    str = ''
    str += "first '#{db.first.name}' do \n"
    str += generate_dsl_of_steps( db.first.steps ) + "\n"
    str += "  start_at #{db.first.start_date.year}, #{db.first.start_date.month}, #{db.first.start_date.day} \n"
    str += "end \n \n"
    
    db.each(db.first.next_state) do |state|
      str += "step '#{state.name}' do \n"
      str += generate_dsl_of_steps( state.steps ) + "\n"
      str += "end \n \n"
    end
    str
  end
  
  private 

  def self.generate_dsl_of_steps(steps)
    steps.map do |step| 
      "  #{step.type} '#{step.name}', #{step.nb_days}"
    end.join("\n")
  end

end