class User < ApplicationRecord
  has_secure_password
  has_many :events
  has_many :attendees
  has_many :category_interests
  has_many :categories, through: :category_interests
  has_many :game_interests
  has_many :games, through: :game_interests
  mount_uploader :avatar, AvatarUploader


  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, presence: true, length: { minimum: 8 }
  validates :avatar_url, presence: true

end
