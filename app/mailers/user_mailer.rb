class UserMailer < ApplicationMailer
  def new_user_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Frothies!')
  end

  def new_order_email
    @user = params[:user]
    @order = params[:order]
    mail(to: @user.email, subject: 'Order Invoice ID:' + @order.id.to_s)
  end
end
