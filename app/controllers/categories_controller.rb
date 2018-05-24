class CategoriesController < ApplicationController
  before_action :check_if_logged_in, only: [:index, :show]

  def new
  end

  def create
  end

  def index
    @categories = Category.all
  end

  def show
    @products = Product.where category_id: params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
