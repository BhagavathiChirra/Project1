class PagesController < ApplicationController
  def home
  end
  def cart
    @cart = Cart.where user_id: @current_user.id
  end
  def delete

  end
end
