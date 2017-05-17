class User < ApplicationRecord
  include Clearance::User

  has_many :own_events, class_name: 'Event', foreign_key: 'user_id'
  has_many :guests, class_name: 'EventUser', foreign_key: 'user_id'

  has_many :user_categories, dependent: :destroy
  has_many :categories, through: :user_categories

end
