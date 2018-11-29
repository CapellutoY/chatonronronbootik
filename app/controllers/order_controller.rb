class OrderController < ApplicationController
  def create
    redirect_to '/charges/new'
  end
  def show
    @orders = User.find(current_user.id).orders
  end
end
