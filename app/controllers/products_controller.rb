class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    byebug
    if @product.save
      flash[:success] = "Product has been added to the catalogue"
      redirect_to products_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @product = Product.find(param[:id])
    if @product.save
      flash[:success] = "Product has been updated"
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, description:[], category_id:[])
    end
  end
