require_relative 'text_helper'

AbstractStep = Struct.new(:name, :nb_days, :contacts) do
  include TextHelper

  [:travel, :city].each do |name|
    define_method "#{name}?" do
      false
    end
  end

  def type
    self.class.name.downcase
  end

  def parent=(state)
    @parent ||= state
  end

  def parent
    @parent
  end

  def to_s
    "#{name}"
  end

  # delegate to state
  def country
    parent.country
  end
end