class Event < ApplicationRecord

  belongs_to :category
  has_many :event_users, dependent: :destroy
  belongs_to :host, class_name: 'User', foreign_key: 'user_id'

end
