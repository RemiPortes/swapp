json.array!(@items) do |item|
  json.extract! item, :id, :name, :owner_id
  json.url item_url(item, format: :json)
end
