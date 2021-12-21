class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string :tipo
      t.references :profile, null: false, foreign_key: true
      t.string :nombre_calle
      t.string :numero_calle
      t.string :comuna
      t.string :ciudad
      t.string :region
      t.integer :zip_code

      t.timestamps
    end
  end
end
