class OrdersController < ApplicationController
  def index
    @orders = Order.all 
  end

  def create
    @order = Order.new(user_id: current_user.id)
    @order_items = OrderItem.where(user_id: current_user.id, pending: true)
    @order_items.each do |item|
      item.update(pending: false)
      @order.order_items << item
    end

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
  end

  private
  def order_params
    params.permit(:total_price, :beer)
  end
end
