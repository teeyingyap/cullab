class Event < ApplicationRecord

  # belongs_to :user
  belongs_to :category
  belongs_to :host, class_name 'User', foreign_key: 'user_id'

  has_many :users, through: :event_users
end
