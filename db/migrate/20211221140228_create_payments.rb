class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :monto_pago
      t.integer :saldo_acum
      t.date :fecha_pago
      t.integer :total_pago
      t.string :medio_pago
      t.references :profile, null: false, foreign_key: true
      t.string :motivo
      t.string :mes_cuota
      t.integer :anio

      t.timestamps
    end
  end
end
