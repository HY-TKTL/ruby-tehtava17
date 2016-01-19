module Debugattava

  def tila
    instance_variables.each do |a|
      print a.to_s + " " + self.instance_variable_get(a).to_s + "\n"
    end
  end

end