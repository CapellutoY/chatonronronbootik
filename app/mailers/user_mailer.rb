class UserMailer < ApplicationMailer

  def order_buyer(user)
    @company_email = "chatonronron_thp@hotmail.com"
    @user = user
    mail(
      from: @company_email,
      to: @user.email,
      subject: "You passed an order on our website !"
    )
  end

  def order_admin(user)
    @company_email = "chatonronron_thp@hotmail.com"
    @user = user
    User.where(:admin => true).each do |admin|
      mail(
        from: @company_email,
        to: admin.email,
        subject: "A customer passed an order !"
      )
    end
  end
end
