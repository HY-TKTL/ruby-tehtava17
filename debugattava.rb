module Debugattava
    def tila
        self.instance_variables.each{|i| puts "#{i} #{self.instance_variable_get(i)}"}
    end
end
