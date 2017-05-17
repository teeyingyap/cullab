class User < ApplicationRecord
  include Clearance::User

  #has_many :events, dependent: :destroy
  #has_many :events, through: :event_users

  has_many :own_events, class_name: 'Event', foreign_key: 'user_id'
  belongs_to :guest, class_name: 'EventUser', foreign_key: 'user_id'


  has_many :user_categories, dependent: :destroy
  has_many :categories, through: :user_categories




  # belongs_to :user_category
  # belongs_to :event_user

end
