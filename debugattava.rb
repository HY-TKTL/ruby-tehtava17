module Debugattava

    def tila()
        variable_names = instance_variables()
        variable_names.each do |name|
            arvo = instance_variable_get(name)
            name_str = name.to_s
            name_str[0] = ""
            puts "#{name_str} #{arvo}"
        end
    end

end