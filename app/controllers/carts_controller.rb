class CartsController < ApplicationController
  def show
    @cart = Cart.find(current_user.id)
  end
  def destroy
    cart = Cart.find(current_user.id)
    cart.items.delete(Item.find(params[:id]))
  end
  def order
    @cart = Cart.find(current_user.id)
    @order = @cart
    Order.new = @order
    @cart.items.delete(Item.all)
  end
end
