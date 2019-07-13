json.extract! event, :id, :name, :user_event_id, :restaurant_event_id, :created_at, :updated_at
json.url event_url(event, format: :json)
