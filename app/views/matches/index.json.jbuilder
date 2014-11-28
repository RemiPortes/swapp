json.array!(@matches) do |match|
  json.extract! match, :id, :first_item_id, :second_item_id
  json.url match_url(match, format: :json)
end
