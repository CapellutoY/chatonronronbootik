class ChargesController < ApplicationController
  def new
    
  end
  def create
    # Amount in cents
    amount = params[:stripeAmount].to_i * 100

    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken]
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
    flash[:notice] = "Please try again"
  end
end
