class ProductsController < ApplicationController
  before_action :check_if_logged_in, only: [:index, :show]
  before_action :get_product, only:[:show, :edit, :update]
  def new
    @product = Product.new
  end

  def create
    product = Product.new product_params
    product.save
    redirect_to products_path
  end

  def index
    raise 'hell'
    @products = Product.find_by params[:id]
  end

  def show
  end

  def edit
  end

  def update
    @product.update product_params
    redirect_to products_path
  end

  def destroy
  end

  private
  def get_product
    @product = Product.find params[:id]
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :category, :image)
  end
end
