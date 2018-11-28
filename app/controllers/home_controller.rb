class HomeController < ApplicationController
  def index
    UserMailer.index.deliver_now!
  end
end
