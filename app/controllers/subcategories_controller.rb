class SubcategoriesController < ApplicationController

  def new
    @subcategory = Subcategory.new  #initialize an empty object for the form, so that we can fill in with details using the form.
    render template: "subcategories/new"
  end


  def create
    @subcategory = Subcategory.new(sub_from_params)
    #byebug
     if @subcategory.save
       redirect_to @subcategory
     else
       render 'new' 
     end
  end

  def edit
    @subcategory = Subcategory.find(params[:id])
  end

  def update
    @subcategory = Subcategory.find(params[:id])
    @subcategory.update(sub_from_params)
    redirect_to @subcategory
  end 

  def show
    @subcategory = Subcategory.find(params[:id])
  end

  def sub_from_params
    params.require(:subcategory).permit(:name, :photo, :category_id)
  end

end
