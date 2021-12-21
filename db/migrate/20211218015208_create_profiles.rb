class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :telefono
      t.integer :cuota
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
