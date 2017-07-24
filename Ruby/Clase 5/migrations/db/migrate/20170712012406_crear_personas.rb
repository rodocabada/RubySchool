class CrearPersonas < ActiveRecord::Migration[5.1]
  def change
  	create_table :personas do |t|
  		t.string :nombre
  		t.date :fecha_de_nacimiento
  		t.string :genero
  		t.string :apodo
  		t.float :ahorro, default: 0.0

  		t.timestamps
  	end
  end
end
