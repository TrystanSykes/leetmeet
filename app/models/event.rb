class Event < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :category
  has_many :attendees
end
