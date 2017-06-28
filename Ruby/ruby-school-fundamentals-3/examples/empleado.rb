require_relative 'trigonometria'
require_relative 'debug'
require_relative 'persona'

class Empleado < Persona
  include Debug

  @@no_de_empleado = 0

  attr_accessor :no_de_empleado

  def initialize(parameters = {})
    @@no_de_empleado += 1
    @no_de_empleado = @@no_de_empleado
    super(parameters)
  end

  # Método de clase o estático.
  def Empleado.hola
    puts "Hola dude!"
  end

  def metodo_super_complejo
    Trigonometria.sin(ahorro)
  end
end
