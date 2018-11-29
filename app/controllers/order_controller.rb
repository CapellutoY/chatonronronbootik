class OrderController < ApplicationController
  def create
    redirect_to new_charge_path
  end
  def show
    @orders = User.find(current_user.id).orders
  end
end
