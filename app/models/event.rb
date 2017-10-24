class Event < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :category
  has_many :attendees

  validates :title, presence: true
  validates :location, presence: true
  validates :about, presence: true, length: { minimum: 40 }

end
