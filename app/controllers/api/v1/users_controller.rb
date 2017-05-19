class Api::V1::UsersController <  ApplicationController
 skip_before_action :require_login, only: [:create, :new, :destroy], raise: false
 skip_before_action :authorize, only: [:create, :new, :destroy], raise: false
  
 skip_before_action :verify_authenticity_token  



 def create
    @user = User.new(user_from_params)
    if @user.save 
  	  sign_in @user
      render json: {remember_token: @user.remember_token}
    else
       render :json => { :result => false, :message => 'Invalid Email or Password'}
    end
  
 end

  
 def destroy
  sign_out 
  render :json => { :result => true, :message => 'Successfully logged out'}
 end


private 
  def user_from_params
  	params.require(:user).permit(:fullname, :email, :password)
  end 


end

