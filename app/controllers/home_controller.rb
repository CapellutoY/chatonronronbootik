class HomeController < ApplicationController
  def index
    if user_session
      unless Cart.find_by(user_id: current_user.id)
        Cart.new(user_id: current_user.id).save
      end
    end
  end
end
