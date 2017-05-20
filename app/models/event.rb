class Event < ApplicationRecord

  belongs_to :category
  #has_many :event_users, foreign_key: :user_id, class_name: "EventUser", dependent: :destroy
 

  #has_many :guests, through: :event_users, dependent: :destroy 
  has_many :event_users, dependent: :destroy
  has_many :guests, through: :event_users
  belongs_to :host, class_name: 'User', foreign_key: 'user_id'

end
