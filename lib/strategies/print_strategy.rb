require 'text_helper'

class PrintStrategy
  include TextHelper
  attr_reader :text

  def initialize
    @text = ''
  end

  def t(str)
    @text += str
  end

  def print_steps(obj)
    obj.steps.map { |step| step.to_s }.join(', ')
  end

  def print_date(obj)
    obj.date_range.to_s
  end

  def print(data)
    print_menu(data)
    print_header
    data.each do |state|
      print_row(state) 
    end
    print_footer
    text
  end

end