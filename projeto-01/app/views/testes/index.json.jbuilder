json.array!(@testes) do |testis|
  json.extract! testis, :id, :nome
  json.url testis_url(testis, format: :json)
end
