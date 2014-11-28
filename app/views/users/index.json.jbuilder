json.array!(@users) do |user|
  json.extract! user, :id, :name, :firstname, :mail, :picture
  json.url user_url(user, format: :json)
end
