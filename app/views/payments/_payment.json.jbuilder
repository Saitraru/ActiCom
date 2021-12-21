json.extract! payment, :id, :monto_pago, :saldo_acum, :fecha_pago, :total_pago, :medio_pago, :profile_id, :motivo, :mes_cuota, :anio, :created_at, :updated_at
json.url payment_url(payment, format: :json)
