class User < ApplicationRecord
  has_secure_password
  has_many :events
  has_many :attendees
  has_many :category_interests
  has_many :categories, through: :category_interests
  has_many :game_interests
  has_many :games, through: :game_interests
end
