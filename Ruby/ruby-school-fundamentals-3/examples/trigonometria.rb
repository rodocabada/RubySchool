# Módulo aplicado como librería.
module Trigonometria
   PI = 3.141592654

   def Trigonometria.sin(x)
     x * 2
   end

   # El uso de self equivale al nombre de la clase, ya que en este contexto hace
   # referencia a la clase misma. Por lo tanto ambas formas son equivalentes y
   # ambas representan métodos de clase.
   def self.cos(x)
     x * 2
   end
end
