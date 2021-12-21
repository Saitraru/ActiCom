json.extract! profile, :id, :rut, :nombre, :apellido1, :apellido2, :telefono, :cuota, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
