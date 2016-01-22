module Debugattava
  def tila
    instance_variables.each { |v| puts "#{v} #{instance_variable_get(v)}" }
  end
end
