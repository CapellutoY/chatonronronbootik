class HomeController < ApplicationController
  def index
    if user_signed_in?
      unless Cart.find_by(user_id: current_user.id)
        Cart.new(user_id: current_user.id).save
      end
      @cart = Cart.find_by(user_id: current_user.id)
    end
  end
end
