require_relative 'abstract_step'

class City < AbstractStep 
  def to_s
    "<strong>#{name}</strong> for #{pluralize(nb_days, 'day')}"
  end

  def city?
    true
  end
end
