class OrdersController < ApplicationController
  def index
    @orders = Order.all 
    binding.pry
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order 
    else
      render 'new'
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
    
    @beer_id = params[:beer].to_i
    @order = Order.new(user_id: current_user.id)
    @order.save

    @order_item = OrderItem.new(product_id: @beer_id, quantity: 1)
    @order_item.save 
  end

  def edit
    @order = Order.find(params[:id])
  end

  def show
    @orders = OrderItems.where(user_id: current_user.id)
  end

  private
  def order_params
    params.permit(:order_id, :user_id, :total_price, :beer)
  end
end
