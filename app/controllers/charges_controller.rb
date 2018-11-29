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
    redirect_to root_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end
end
