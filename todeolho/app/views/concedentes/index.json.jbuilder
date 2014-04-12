json.array!(@concedentes) do |concedente|
  json.extract! concedente, :id, :nome, :codigo, :references
  json.url concedente_url(concedente, format: :json)
end
