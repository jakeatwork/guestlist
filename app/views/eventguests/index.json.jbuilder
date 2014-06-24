json.array!(@eventguests) do |eventguest|
  json.extract! eventguest, :id, :event_id, :user_id, :type_id, :extras, :attended
  json.url eventguest_url(eventguest, format: :json)
end
