class OrderItemsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @order_item = OrderItem.new
  end

  def create
    @beer_id = params[:beer].to_i
    @quantity = params[:quantity].to_i
    @user = current_user
    @order_item = OrderItem.new(product_id: @beer_id, quantity: @quantity, pending: true)
    @user.order_items << @order_item
  
    if @order_item.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  private
  def order_items_params
    params.permit(:total_price, :beer, :quantity, :pending)
  end
end
