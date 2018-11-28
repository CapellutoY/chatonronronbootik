class OrderController < ApplicationController
  def create
    @cart = Cart.find(current_user.id)
    @order = @cart
    Order.new = @order
    @cart.items.delete(Item.all)
  end
end
