json.array!(@meis) do |mei|
  json.extract! mei, :id, :cnpj, :razao_social, :cpf, :rg, :nome, :sexo, :descricao_atividade, :email
  json.url mei_url(mei, format: :json)
end
