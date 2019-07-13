class Event < ApplicationRecord
  has_many :user_events
  has_many :restaurant_events
  has_many :users , through: :user_events
  has_many :restaurants, through: :restaurant_events

end
