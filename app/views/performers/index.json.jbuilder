json.array!(@performers) do |performer|
  json.extract! performer, :id, :name
  json.url performer_url(performer, format: :json)
end
