class Restaurant < ApplicationRecord
  has_many :likeds
  has_many :users, through: :likeds
  has_many :restaurant_events
  
end
