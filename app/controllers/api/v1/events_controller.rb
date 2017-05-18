class Api::V1::EventsController < ApplicationController
  def index
    events = current_user.categories.events
    render json: events
  end

end
