class CartsController < ApplicationController
  def show
    @cart = Cart.find_by(user_id: current_user.id)
  end
  def destroy
    cart = Cart.find_by(user_id: current_user.id)
    cart.items.delete(Item.find(params[:id]))
  end
end
