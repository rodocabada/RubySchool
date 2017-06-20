class Persona
	attr_accessor :nombre

	def initialize(name)
		@nombre = name
	end

	#def nombre
		#@nombre
	#end

	#def nombre=(nuevo_nombre)
		#@nombre = nuevo_nombre
	#end
end

ana = Persona.new("Ana Lucia")
andrei = Persona.new("El Helo")

puts andrei.nombre

andrei.nombre = "Abelardo"

puts andrei.nombre