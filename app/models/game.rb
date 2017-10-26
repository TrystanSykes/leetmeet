class Game < ApplicationRecord
  has_many :game_interests
  has_many :users, through: :game_interests
  mount_uploader :logo, LogoUploader
end
