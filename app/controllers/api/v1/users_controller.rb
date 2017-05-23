class Api::V1::UsersController <  Api::V1::ApplicationController

  def index 
    @user = User.where(id: current_user.id).all
    render :json => @user.to_json
  end 


  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_from_params)
    render json: {remember_token: @user.remember_token}
  end

#  def create
#     @user = User.new(user_from_params)
#     if @user.save 
#   	  sign_in @user
#       render json: {remember_token: @user.remember_token}
#     else
#        render :json => { :result => false, :message => 'Invalid Email or Password'}
#     end
  
#  end

  
#  def destroy
#   sign_out 
#   render :json => { :result => true, :message => 'Successfully logged out'}
#  end


private 
  def user_from_params
  	params.require(:user).permit(:avatar)
  end 


end

