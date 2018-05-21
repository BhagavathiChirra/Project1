class CategoriesController < ApplicationController
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
