class ProductsController < ApplicationController
  before_action :check_if_logged_in, only: [:index, :show, :new]
  before_action :check_if_admin, except: [:index, :show]
  before_action :get_product, only:[:show, :edit, :update]


  def new
    @product = Product.new
  end

  def create
    product = Product.create product_params
    if product.persisted?
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        product.image = req["public_id"]
        product.save
      end
      redirect_to category_path( product.category )
    else
      flash[:errors] = product.errors.full_messages
      redirect_to new_product_path
    end
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

  def search
    @products = Product.where("name ILIKE?", "%#{params[:query]}%")
  end

  private
  def get_product
    @product = Product.find params[:id]
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :description, :address, :category_id, :image)
  end
end
