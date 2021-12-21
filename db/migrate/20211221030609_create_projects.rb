class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :nombre
      t.string :descripcion
      t.date :inicio_votacion
      t.date :cierre_votacion
      t.string :imagen
      t.integer :votos_positivos
      t.integer :votos_negativos
      t.string :resultado

      t.timestamps
    end
  end
end
