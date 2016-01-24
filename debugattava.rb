module Debugattava

	def tila
		self.instance_variables.each do |var|
			puts "#{var.to_s} #{self.instance_variable_get(var)}"
		end
	end

end