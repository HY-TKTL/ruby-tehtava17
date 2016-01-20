module Debugattava

  def tila()
    instance_variables.each do |x|
      puts x.to_s + " " + self.instance_variable_get(x).to_s + "\n"
    end
  end
end
