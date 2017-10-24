class Category < ApplicationRecord
  has_many :category_interests
  has_many :users, through: :category_interests
end
