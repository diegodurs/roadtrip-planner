require_relative 'abstract_step'

class Travel < AbstractStep
  def to_s
    "Will travel for #{pluralize(nb_days, 'day')} to <strong>#{name}</strong>"
  end

  def travel?
    true
  end
  
end