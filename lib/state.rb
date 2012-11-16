require_relative 'date_range'
require_relative 'city'
require_relative 'travel'
require_relative 'contact'
require_relative 'dsl_state'

class State
  include DslState
  attr_accessor :name, :next_state
  attr_reader :prev_state, :steps
  attr_writer :nb_days, :country, :start_date
  
  def initialize(name = '', &block)
    # instance_eval(&block) if block_given?
    self.name = name
    @steps = []
    block.call(self) if block_given?
  end

  def add_step(step)
    @steps << step
  end

  def country
    @country || 'USA'
  end

  def date_range
    @date_range ||= DateRange.new(start_date, end_date)
  end

  def end_date
    @end_date ||= (start_date + nb_days.days) - 1.day
  end

  def has_next?
    !@next_state.nil?
  end

  def nb_days
    @nb_days || @steps.map(&:nb_days).inject(:+)
  end

  def prev_state=(state)
    state.next_state = self
    @prev_state = state
  end
  
  def start_date
    @start_date ||= prev_state.end_date + 1.day
  end

  def start_date?
    !@start_date.nil?
  end

  def steps=(cs)
    @steps = cs
    cs.each do |c|
      c.parent = self
    end
  end
  alias :cities :steps
  alias :cities= :steps=

  def to_html
    str = "[accordion_content title=\"#{@name} - #{date_range.to_s}\" title_size=\"h4\"]"
    @steps.each do |c|
      str += c.to_s + '<br/>'
    end
    str += "[/accordion_content]"
    str
  end
end