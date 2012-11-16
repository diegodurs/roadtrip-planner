# this is not a database
# it's a double linked list of states
# each state has a list of steps
# a step can be a city or a travel

class Database

  attr_reader :first
  
  def initialize(seeder)
    @first = seeder.run
    @current_state = @first
  end

  def find_state(name)
    select {|s| name == s.name}
  end

  def select(state = nil, selected = [], &block)
    state ||= @first
    selected << state if block.call( state )
    if state.has_next?
      select( state.next_state, selected, &block ) 
    else # end of recursion
      selected
    end
  end

  def each(state = nil , &block)
    state ||= @first
    block.call( state )
    each( state.next_state, &block ) if state.has_next?
  end

  def get_uniq_states
    @uniq_states ||= push_as_uniq( self ).sort
  end

  def get_uniq_cities
    return @uniq_cities if @uniq_cities
    uniq_cities = {}
    each do |state|
      uniq_cities = push_as_uniq( state.steps, uniq_cities ) {|step| step.city?}
    end
    @uniq_cities = uniq_cities.sort
  end


  # Private methods
  #################
  private
  
  def push_as_uniq(datas, uniques = {}, &block)
    datas.each do |data|
      if block_given?
        next unless block.call(data)
      end
      if uniques.include? data.name
        uniques[ data.name ] << data
      else
        uniques[ data.name ] = [ data ]
      end
    end
    uniques
  end

  # def recursive_each(state, &block)
  #   block.call( state )
  #   recursive_each( state.next_state, &block ) if state.has_next?
  # end

  # def recursive_map(state, results = [], &block)
  #   results << state if block.call( state )
  #   if state.has_next?
  #     recursive_map( state.next_state, results, &block ) 
  #   else
  #     results
  #   end
  # end
end