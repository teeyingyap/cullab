class Api::V1::EventUsersController < Api::V1::ApplicationController
  def create #this create method is called when someone joins an event
  	event_user_json = JSON.parse(request.body.read)
  	event_user_json.each do |x|
  		@eventuser = EventUser.new(x)
  		@eventuser.save
  	end

  end 

  def index #this shows all the event that you've joined
    @my_joined_events = EventUser.where(user_id: current_user.id).all
    render :json => @my_joined_events.to_json( :include => [{:event => { :include => [{:subcategory => {:only => :name}}, {:guests => { :only => :fullname }  }, {:host => { :only => :fullname }} ]}}])
    
    #render :json => @my_joined_events, :includes => [:events]
#http://192.168.1.116:3000/api/v1/event_users?remember_token=a1376e38b8ca99f7e36d82d757b7ba1c109fdb0e
  end 

end
