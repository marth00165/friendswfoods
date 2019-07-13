json.extract! restaurant, :id, :name, :cuisine, :like_id, :zipcode, :restaurant_event_id, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
