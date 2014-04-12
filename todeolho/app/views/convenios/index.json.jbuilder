json.array!(@convenios) do |convenio|
  json.extract! convenio, :id, :codigo, :nome, :situacao, :valor, :dataPublicacao, :dataInicio, :dataFim
  json.url convenio_url(convenio, format: :json)
end
