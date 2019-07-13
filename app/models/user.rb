class User < ApplicationRecord
  has_many :likeds
  has_many :user_events
end
