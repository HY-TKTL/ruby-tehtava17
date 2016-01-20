module Debugattava
  def tila
    varnames = self.instance_variables
    varnames.each do |varname|
      puts "#{varname} #{self.instance_variable_get(varname)}"
    end
  end
end
