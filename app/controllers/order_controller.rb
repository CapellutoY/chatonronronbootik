class OrderController < ApplicationController
  def create
    Order.new(user_id: current_user.id).save
    Cart.find(current_user.id).items.each do |item|
      User.find(current_user.id).orders.last.items << item
    end
    UserMailer.order_buyer(User.find(current_user.id)).deliver
    UserMailer.order_admin(User.find(current_user.id)).deliver
    Cart.find(current_user.id).items.delete(Item.all)
  end
end
