class OrderItemsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @order_item = OrderItem.new
  end

  def create
    @beer_id = params[:beer]
    @order_item = OrderItem.new(product_id: @beer_id, quantity: 1, pending: true)
    if @order_item.save 
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
  end

  private
  def order_items_params
    params.permit(:order_id, :total_price, :beer, :pending)
  end
end
