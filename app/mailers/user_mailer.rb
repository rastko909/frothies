require 'resolv'
class UserMailer < ApplicationMailer
  def new_user_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Frothies!')
  end

  def new_order_email
    @user = params[:user]
    @order = params[:order]
    mail(to: @user.email, subject: 'Order Invoice ID:' + @order.id.to_s) if domain_has_mx?(@user.email.split('@')[1])
  end

  def domain_has_mx?(domain)
    Resolv::DNS.open do |dns|
      dns.getresources(domain, Resolv::DNS::Resource::IN::MX).count == 0 ? false : true
    end
  end
end
