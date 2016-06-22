json.array!(@migeneros) do |migenero|
  json.extract! migenero, :id, :genero, :idgenero
  json.url migenero_url(migenero, format: :json)
end
