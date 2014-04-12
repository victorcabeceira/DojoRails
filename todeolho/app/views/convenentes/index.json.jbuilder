json.array!(@convenentes) do |convenente|
  json.extract! convenente, :id, :nome, :codigo, :references
  json.url convenente_url(convenente, format: :json)
end
