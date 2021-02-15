class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = 'Produto cadastrado com sucesso!'
      redirect_to profile_url
    else
      render 'new'
    end

  end

  private
  def product_params
    params.require(:product).permit(:name, :code, :price_cents, :quantity)
  end
end
