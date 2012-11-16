module DslState

  module ClassMethods

    # juste check if the method we are about to define is not allready defined
    def define_instance_dsl_method(name, &block)
      if instance_methods.include?( name.to_sym )
        raise ".method #{name} already defined"
      else
        define_method( name, &block )
      end
    end

    # used to create one DSL method for each class inherited from AbstractStep class
    def define_kind_of_step(class_name)
      define_instance_dsl_method( class_name.downcase ) do |step_name, nb_of_days|
        new_step = class_name.constantize.new(step_name, nb_of_days)
        new_step.parent = self
        self.add_step( new_step )
      end
    end

    # create one method for setting of getting an attributes
    # ex: country() return the country, country(name) set the country
    def define_set_and_get_method(name, &block)
      define_instance_dsl_method "#{name}" do |value = ''|
        if value == ''
          instance_eval(&block)
        else
          instance_variable_set("@#{name}".to_sym, value)
        end
      end
    end
  
  end
    
  def self.included(receiver)
    receiver.extend         ClassMethods
  
    receiver.define_kind_of_step 'City'
    receiver.define_kind_of_step 'Travel'
    receiver.define_instance_dsl_method 'start_at' do |y, m, d|
      self.start_date = Date.new(y,m,d)
    end
    receiver.define_set_and_get_method 'country' do
      @country || default_country
    end

  end
end


  # define_instance_dsl_method 'travel' do |city_name, nb_of_days|
  #   travel = Travel.new(city_name, nb_of_days)
  #   travel.parent = self
  #   self.cities << travel
  # end
  # define_instance_dsl_method 'city' do |city_name, nb_of_days|
  #   city = City.new(city_name, nb_of_days)
  #   city.parent = self
  #   self.cities << city
  # end 

# State.send :include, DslState
