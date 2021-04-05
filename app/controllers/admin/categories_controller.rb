class Admin::CategoriesController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'] , password: ENV['ADMIN_PASSWORD']

  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @categories = Category.new
  end

  def create
    @categories = Category.new(catagory_params)

    if @categories.save
      redirect_to [:admin, :categories], notice: 'Product created!'
    else
      render :new
    end
  end

  private

  def catagory_params
    params.require(:category).permit(
      :name,
    )
  end
 
end
