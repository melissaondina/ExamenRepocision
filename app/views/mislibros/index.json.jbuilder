json.array!(@mislibros) do |mislibro|
  json.extract! mislibro, :id, :nombre, :descripcion, :idautor, :idgenero
  json.url mislibro_url(mislibro, format: :json)
end
