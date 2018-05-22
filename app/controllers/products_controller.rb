class ProductsController < ApplicationController
  before_action :check_if_logged_in, only: [:index, :show, :new]
  before_action :check_if_admin, only:[:new]
  before_action :get_product, only:[:show, :edit, :update]
  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @product.image = req["public_id"]
    end
    @product.save
    redirect_to category_path( @product.category )
  end

  def index
    @products = Product.find_by params[:id]
  end

  def show
  end

  def edit
  end

  def update
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @product.image = req["public_id"]
    end
    @product.update product_params
    redirect_to product_path
  end

  def destroy
    p = Product.find params[:id]
    p.destroy
    # raise 'hell'
    redirect_to category_path(p.category)
  end

  def add
    Cart.create(
      user_id: @current_user.id,
      product_id: params[:id]
    )
    redirect_to show_cart_path
  end

  def remove
    # raise 'hell'
    Cart.destroy params[:id]
    redirect_to show_cart_path
  end

  private
  def get_product
    @product = Product.find params[:id]
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id)
  end
end
