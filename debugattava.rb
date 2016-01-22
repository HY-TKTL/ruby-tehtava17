
module Debugattava
  def tila
    l = self.instance_variables
    l.each do |x|
      puts "#{x[1..x.length]} #{self.instance_variable_get(x)}"
    end
  end
end

