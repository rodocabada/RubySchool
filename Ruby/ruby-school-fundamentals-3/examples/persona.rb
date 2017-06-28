require 'date'

class Persona
  attr_reader   :fecha_de_nacimiento, :ahorro, :apodo
  attr_accessor :genero

  def initialize(parameters = {})
    @nombre              = parameters[:nombre]
    @fecha_de_nacimiento = Date.parse(parameters[:fecha_de_nacimiento])
    @ahorro              = 0
    @apodo               = parameters[:apodo]
  end

  def saludar
    puts "Hola, mi nombre es #{nombre}, mucho gusto!"
  end

  # Esto es un getter. Podríamos haberlo implementado como un attr_reader, pero
  # queremos darle un tratamiento especial por lo que lo hacemos por nuestra
  # cuenta.
  def nombre
    @nombre.upcase
  end

  # Esto es un atributo virtual.
  def edad
    hoy = Date.today
    hoy.year - fecha_de_nacimiento.year -
    ((hoy.month > fecha_de_nacimiento.month ||
    (hoy.month == fecha_de_nacimiento.month && hoy.day >= fecha_de_nacimiento.day)) ? 0 : 1)
  end

  def obtener_paga(sueldo)
    @ahorro += sueldo
  end
end
