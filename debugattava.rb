module Debugattava
  def tila
    self.instance_variables.each do |var|
      puts "#{var} #{self.instance_variable_get var}"
    end
  end
end
