class Api::V1::EventsController <  Api::V1::ApplicationController
  def create #this create method is called when you HOST an event
  	event_json = JSON.parse(request.body.read)
  	event_json.each do |x|
  		@hosted_event = Event.new(x)
  		@hosted_event.save
  	end 
  end 


  def index #to show all the events under the EACH categories that user has chosen
    @events = Event.all
    render :json => @events, :include => { :host => { :only => :fullname } }    

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
