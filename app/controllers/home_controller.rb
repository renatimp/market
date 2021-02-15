class HomeController < ApplicationController
  def index
    @users = User.all

  end

  def show
    @products = Product.all
  end
end
