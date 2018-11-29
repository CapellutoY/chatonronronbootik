class OrderController < ApplicationController
  def create
    redirect_to '/charges/new'
  end
end
