class Api::V1::SessionsController < ApplicationController
 skip_before_action :require_login, only: [:create, :new, :destroy], raise: false
 skip_before_action :authorize, only: [:create, :new, :destroy], raise: false
  
 skip_before_action :verify_authenticity_token  



 def create
  @user = authenticate(params)
  sign_in(@user) do |status|
   if status.success?  && @user != nil  
    #render :json => {:result => true,:object => @user}
    render json: {remember_token: @user.remember_token, id: @user.id}
   else
       render :json => { :result => false, :message => 'Invalid Email or Password'}
    end
  end
  
 end

  
 def destroy
  sign_out 
  render :json => { :result => true, :message => 'Successfully logged out'}
 end

  
end


# User.where({ name: ["Alice", "Bob"]})
# Event.where(id: EventUser.where(guest: User.last).first.event_id)

# Event.where(id: EventUser.where(user_id: 2))
