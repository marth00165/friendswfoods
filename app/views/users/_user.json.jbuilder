json.extract! user, :id, :name, :email, :age, :gender, :location, :password, :fav_meal, :availability, :created_at, :updated_at
json.url user_url(user, format: :json)
