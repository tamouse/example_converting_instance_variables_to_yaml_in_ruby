module InstanceValuesExtension

  module InstanceMethods
    def instance_values
      Hash[
        instance_variables.map do |name|
          key = name.to_s[1..-1]
          value = instance_variable_get(name)
          if (value.instance_variables.count > 1 && value.respond_to?(:instance_values))
            value = value.instance_values
          end
          [key, value]
        end
      ]
    end
  end
  
  def self.included(receiver)
    receiver.send :include, InstanceMethods
  end

end
