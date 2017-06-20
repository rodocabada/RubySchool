def imprime_pls
	if block_given?
		yield
		yield
	else
		puts "No es un block"
	end
end

imprime_pls {puts "The cake is a lie"}