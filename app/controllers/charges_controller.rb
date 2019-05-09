class ChargesController < ApplicationController  
  
  def create
    @amount = params[:total_price]

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
    
  begin
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'aud',
    })
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

  else
    @user = User.find(current_user.id)
    @order = Order.new(user_id: current_user.id)
    @order_items = OrderItem.where(user_id: current_user.id, pending: true)
    @total_price = 0

    @order_items.each do |item|
      @vendor_id = item.product.vendor.id
      @total_price += item.product.price * item.quantity
      item.update(pending: false, vendor_id: @vendor_id)
      @order.order_items << item
    end

    @order.update(total_price: @total_price, completed: false)
    @order = Order.last
    
    @user = current_user
    UserMailer.with(user: @user, order: @order).new_order_email.deliver_now

    if @order.save
      render :show
    else
      render :new
    end
  end

end