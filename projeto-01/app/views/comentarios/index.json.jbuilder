json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :nome, :titulo, :descricao
  json.url comentario_url(comentario, format: :json)
end
