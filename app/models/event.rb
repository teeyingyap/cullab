class Event < ApplicationRecord

  belongs_to :category

  #has_many :event_users, foreign_key: :user_id, class_name: "EventUser", dependent: :destroy
 

  #has_many :guests, through: :event_users, dependent: :destroy 
  has_many :event_users, dependent: :destroy
  has_many :guests, through: :event_users
  belongs_to :host, class_name: 'User', foreign_key: 'user_id'

  after_create_commit :push_message

  scope :recent, -> { where("event_time >= ? ", Date.today).order("event_time ASC") }

  private
  def push_message
    #events = Event.all.reverse
  	#ActionCable.server.broadcast 'activity_channel', name: name, description: description, events:  events
     #ActionCable.server.broadcast 'activity_channel', message: render_event(events)
    ActionCable.server.broadcast 'activity_channel', last_updated_time: Time.now, last_updated_event_name: name

  end

  # def render_event(events)
  #   last_update_time = Time.now
  #   #ApplicationController.renderer.render('events/index', locals: { events: events })
  # end

end
