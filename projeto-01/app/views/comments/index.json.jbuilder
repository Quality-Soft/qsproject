json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :title, :description, :mei_id
  json.url comment_url(comment, format: :json)
end
