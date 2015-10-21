json.array!(@comments) do |comment|
  json.extract! comment, :id, :description, :mei_id
  json.url comment_url(comment, format: :json)
end
