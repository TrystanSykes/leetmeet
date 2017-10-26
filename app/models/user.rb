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
  validates :password, on: :create, presence: true, length: { minimum: 8 } 


  def update_rep
    votes = Vote.where(recipient_id: self.id).pluck(:value)
    votes = votes.map(&:to_i)
    self.reputation = votes.sum
    self.save
  end

end
