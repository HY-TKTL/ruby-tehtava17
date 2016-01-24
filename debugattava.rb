module Debugattava
  def tila
    instance_variables.each do |var|
      puts "#{var[1..10000]} #{instance_variable_get(var)}"
    end
  end
end