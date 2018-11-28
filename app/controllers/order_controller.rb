class OrderController < ApplicationController
  def create
    Order.new(user_id: current_user.id).save
    Cart.find(current_user.id).items.each do |item|
      Order.find(current_user.id).items << item
    end
    Cart.find(current_user.id).items.delete(Item.all)
  end
end
