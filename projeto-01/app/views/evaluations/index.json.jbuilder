json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :mei_id, :rating
  json.url evaluation_url(evaluation, format: :json)
end
