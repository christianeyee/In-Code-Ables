json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :f_name, :l_name, :affiliation
  json.url user_url(user, format: :json)
end
