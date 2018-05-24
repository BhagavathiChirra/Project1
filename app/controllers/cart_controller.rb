class CartController < ApplicationController
  def show
    @cart = Cart.where user_id: @current_user.id
  end
  def cart
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

  def check_out

  end

end
