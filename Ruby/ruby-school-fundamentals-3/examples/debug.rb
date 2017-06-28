# Módulo aplicado como mixin.
module Debug
  def pero_que_es_esto?
    "#{self.class.name} (id: #{self.object_id}): #{self.nombre}"
  end
end
