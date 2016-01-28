module Debugattava

	def tila
		self.instance_variables.each { |var| puts "#{var} #{instance_variable_get(var)}" }
	end

end