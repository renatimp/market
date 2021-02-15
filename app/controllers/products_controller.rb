class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create

  end

  private
  def product_params
    params.require(:product).permit(:name, :code, :price_cents, :quantity)
  end
end
