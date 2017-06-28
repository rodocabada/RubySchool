class Float
	def format_price
		"$#{sprintf('%.2f', self)}"
	end
end