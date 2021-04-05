class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'] , password: ENV['ADMIN_PASSWORD']

  def show
    @category = Category.order(id: :desc).all
    @products = Product.order(id: :desc).all
    
  end
end
