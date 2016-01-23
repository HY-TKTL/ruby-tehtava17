module Debugattava
  def tila
    self.instance_variables.each do |variable|
      puts "#{variable} #{self.instance_variable_get("#{variable}")}"
    end
  end
end