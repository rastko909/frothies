class OrdersController < ApplicationController

  def index
    if current_user != nil

      if current_user.is_vendor? == true 
        @order_items = OrderItem.where(pending: false)
        @vendors_items_sold = []
        @order_items.each do |item|
          if item.product.vendor.id == current_user.vendor.id 
            @vendors_items_sold << item
          end
        end
      end

    end
    
    @orders = current_user.orders
  end

  def create
    @user = User.find(current_user.id)
    @order = Order.new(user_id: current_user.id)
    @order_items = OrderItem.where(user_id: current_user.id, pending: true)
    @total_price = 0
    @order_items.each do |item|
      @total_price += item.product.price * item.quantity
      item.update(pending: false)
      @order.order_items << item
    end
    
    @order.update(total_price: @total_price, completed: false)

    if @order.save
      render :show
    else
      render :new
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order
    else 
      render 'edit'
    end
  end

  def new
    @order = Order.new(user_id: current_user.id)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def show
    @order = OrderItem.find(user_id: current_user.id)
    @user = User.find(current_user.id)
  end

  private
  def order_params
    params.permit(:total_price, :beer)
  end
end
