class EventUser < ApplicationRecord

  belongs_to :event
  belongs_to :guest, class_name: 'User', foreign_key: 'user_id'

  after_create_commit :push_message
 
  private
  def push_message
    #events = Event.all.reverse
  	#ActionCable.server.broadcast 'activity_channel', name: name, description: description, events:  events
     #ActionCable.server.broadcast 'activity_channel', message: render_event(events)
    ActionCable.server.broadcast 'activity_channel', last_updated_time: Time.now

  end

end
