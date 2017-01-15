module Debugattava

  def tila
    muuttujat = instance_variables
    muuttujat.each{|a| puts "#{a.to_s.partition('@').last} #{instance_variable_get(a)}"}
  end
end