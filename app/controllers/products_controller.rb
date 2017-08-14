class ProductsController < ApplicationController

  def index
    products = Product.all
  end

  def new
    product = Product.new
  end

  def create
    product = Product.new(product_params)
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
