class Category < ApplicationRecord

  has_many :events, dependent: :destroy

  has_many :user_categories, dependent: :destroy
  has_many :users, through: :user_categories
end
