class ItemsController < ApplicationController
  def show
    if user_session
      @cart = Cart.find_by(user_id: current_user.id)
    end
    @item = Item.find(params[:id])
  end
end
