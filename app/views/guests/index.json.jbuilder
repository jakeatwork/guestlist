json.array!(@guests) do |guest|
  json.extract! guest, :id, :event_id, :type_id, :comments
  json.url guest_url(guest, format: :json)
end
