class UserMailer < ApplicationMailer

  def initialize
    @company_email = "chatonronron_thp@hotmail.com"
  end

  def order_buyer(user)
    @user = user
    mail(
      from: @company_email,
      to: user.email,
      subject: "You passed an order on our website !"
    )
  end

  def order_admin(user)
    @user = user
    User.find_by(admin: true).each do |admin|
      mail(
        from: @company_email,
        to: admin.email,
        subject: "A customer bought an order !"
      )
    end
end
