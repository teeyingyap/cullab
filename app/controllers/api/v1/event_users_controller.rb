class Api::V1::EventUsersController < ApplicationController
  def create #this create method is called when someone joins an event
  	event_user_json = JSON.parse(request.body.read)
  	event_user_json.each do |x|
  		@eventuser = EventUser.new(x)
  		@eventuser.save
  	end

  end 

  def index #this shows all the event that you've joined
    # @my_joined_events = Event.where(id: EventUser.where(user_id: 1).each do |x|
    # x.event_id
    # end )
    # render :json => @my_joined_events, :include => { :host => { :only => :fullname } }
    @my_joined_events = EventUser.where(user_id: 1).all
    render :json => @my_joined_events.to_json( :include => [{:event => { :include => {:host => { :only => :fullname }}}}])
    #render :json => @my_joined_events, :includes => [:events]

  end 

end
