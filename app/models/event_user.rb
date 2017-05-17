class EventUser < ApplicationRecord

  belongs_to :event
  #belongs_to :user
  has_many :guests, class_name 'User', foreign_key: 'user_id'


end
