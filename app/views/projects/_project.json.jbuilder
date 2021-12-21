json.extract! project, :id, :nombre, :descripcion, :inicio_votacion, :cierre_votacion, :imagen, :votos_positivos, :votos_negativos, :resultado, :created_at, :updated_at
json.url project_url(project, format: :json)
