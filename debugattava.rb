module Debugattava
  def tila
    instance_variables.each {|variable| puts "#{variable} #{instance_variable_get(variable)}"}
  end
end