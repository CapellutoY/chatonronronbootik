class OrderController < ApplicationController
  def create
    UserMailer.order_buyer(User.find(current_user.id)).deliver
    UserMailer.order_admin(User.find(current_user.id)).deliver
    Order.new(user_id: current_user.id).save
    Cart.find(current_user.id).items.each do |item|
      Order.find_by(user_id: current_user.id).items << item
    end
    Cart.find(current_user.id).items.delete(Item.all)
  end
end
