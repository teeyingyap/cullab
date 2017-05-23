class Api::V1::EventsController <  Api::V1::ApplicationController
  def create #this create method is called when you HOST an event
  	event_json = JSON.parse(request.body.read)
    event_json.each do |x|
  	  @hosted_event = Event.new(x)
  	  @hosted_event.save
    end 
  end 


  def index #to show all the events, either events i hosted or all events  
  	if params[:host] #condition: they have to send me the params
       @events = Event.where(host: params[:host])
       render :json => @events, :include => [{:subcategory => {:only => :name}}, {:guests => { :only => :fullname }  }, {:host => { :except => [:encrypted_password, :created_at, :updated_at, :confirmation_token] }} ] 

#http://192.168.1.116:3000/api/v1/events?remember_token=a1376e38b8ca99f7e36d82d757b7ba1c109fdb0e&host=1

    else
       @events = Event.all #i give them ALL the events, they have to separate them according to category id
       render :json => @events, :include => [{:subcategory => {:only => :name}}, {:guests => { :only => :fullname }  }, {:host => { :except => [:encrypted_password, :created_at, :updated_at, :confirmation_token] }} ] 
#http://192.168.1.116:3000/api/v1/events?remember_token=a1376e38b8ca99f7e36d82d757b7ba1c109fdb0e       
    end 
    # @allevents = []
    # current_user.categories.each do |category|
    #   @allevents << category.events
    # end 
    #   render json: @allevents.to_json(:include => { :user => { :only => :fullname } })

        #events = current_user.categories.events
    #rendor json: events
    # @allevents = Event.all
    # render :json => @allevents.to_json(:include => { :host => { :only => :fullname } })
  end

  def show #to show individual events
  	@event = Event.find(params[:id])
  	render json: @event
  end 

end
