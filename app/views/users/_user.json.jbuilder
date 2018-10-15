json.extract! user, :id, :name, :email, :password, :salt, :usertype, :created_at, :updated_at
json.url user_url(user, format: :json)
