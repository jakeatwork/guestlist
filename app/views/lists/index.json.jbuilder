json.array!(@lists) do |list|
  json.extract! list, :id, :venue_id, :event_id, :performer_id
  json.url list_url(list, format: :json)
end
