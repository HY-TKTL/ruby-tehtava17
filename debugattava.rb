module Debugattava
 def tila
  self.instance_variables.length.times do |x|
   muuttuja = self.instance_variables.at(x)
   puts muuttuja[1..-1] + " " + self.instance_variable_get(muuttuja).to_s
  end
 end
end
