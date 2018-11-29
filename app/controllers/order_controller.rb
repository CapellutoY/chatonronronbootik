class OrderController < ApplicationController
  def create
    Order.new(user_id: current_user.id).save
    price = 0
    Cart.find(current_user.id).items.each do |item|
      User.find(current_user.id).orders.last.items << item
      price += item.price
    end
    User.find(current_user.id).orders.last.update(price: price)
    Cart.find(current_user.id).items.delete(Item.all)
    redirect_to '/charges/new'
  end
end
