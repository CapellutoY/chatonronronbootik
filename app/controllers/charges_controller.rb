class ChargesController < ApplicationController
  def new
    @amount = User.find(current_user.id).orders.last.price
  end
  def create
    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken]
    )
    UserMailer.order_buyer(User.find(current_user.id)).deliver
    UserMailer.order_admin(User.find(current_user.id)).deliver
    Cart.find(current_user.id).items.delete(Item.all)
    Order.new(user_id: current_user.id).save
    price = 0
    Cart.find(current_user.id).items.each do |item|
      User.find(current_user.id).orders.last.items << item
      price += item.price
    end
    User.find(current_user.id).orders.last.update(price: price)
    redirect_to root_path
  rescue Stripe::CardError => e

    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end
end
