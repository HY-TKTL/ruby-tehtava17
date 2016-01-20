module Debugattava
  def tila
    self.instance_variables.each do |i|
      print i.to_s + " " + self.instance_variable_get(i).to_s + "\n"
    end
  end
end
