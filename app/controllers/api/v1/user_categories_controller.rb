class Api::V1::UserCategoriesController < ApplicationController
  def create
    @usercategories = UserCategory.create(user_category_from_params)
    render json: {user_id: @usercategories.user_id, category_id: @usercategories.category_id}
  end


  private
  	def user_category_from_params
      params.require(:user_category).permit(:user_id, :category_id)
  	end 
end
