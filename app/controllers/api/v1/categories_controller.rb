class Api::V1::CategoriesController <  Api::V1::ApplicationController
  def index
    categories = Category.all
    render json: categories
    #render json: {id: categories.ids, name: categories.name}
  end


end
