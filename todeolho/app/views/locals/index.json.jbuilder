json.array!(@locals) do |local|
  json.extract! local, :id, :uf, :municipio, :cep, :references
  json.url local_url(local, format: :json)
end
