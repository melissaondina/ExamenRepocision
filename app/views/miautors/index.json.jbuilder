json.array!(@miautors) do |miautor|
  json.extract! miautor, :id, :nombre, :idautor
  json.url miautor_url(miautor, format: :json)
end
