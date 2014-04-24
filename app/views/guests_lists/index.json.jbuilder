json.array!(@guests_lists) do |guests_list|
  json.extract! guests_list, :id, :guest_id, :list_id
  json.url guests_list_url(guests_list, format: :json)
end
