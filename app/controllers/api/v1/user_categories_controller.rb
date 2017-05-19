class Api::V1::UserCategoriesController < Api::V1::ApplicationController

  def create 
  	json_request = JSON.parse(request.body.read)
  	json_request.each do |x|
  		@usercategories = UserCategory.new(x)
  		@usercategories.save
  	end

    # @usercategories = UserCategory.new([{"category_id"=>1, "user_id"=>1}, {"category_id"=>2, "user_id"=>1}, {"category_id"=>3, "user_id"=>1}])
    # @usercategories.save
      # if @usercategories.save
      #   render json: {user_id: @usercategories.user_id, category_id: @usercategories.category_id}
      # else
      # 	render :json => { :result => false, :message => 'Invalid Category'}
      # end
  end


  # private
  # 	def json_request
  #     params.require(:user_category).permit(:user_id, :category_id)
  #  	end 
end
