class OrderItemsController < ApplicationController
  def index 
    @user = User.find(current_user.id)
    @order_items = OrderItem.where(pending: true)
    @total_price = 0
    @order_items.each do |item|
      @total_price += item.product.price * item.quantity
    end
  end

  def new
    @order_item = OrderItem.new
  end

  def create
    unless current_user == nil
      @order_item = OrderItem.new(order_items_params)
      current_user.order_items << @order_item

      if @order_item.save!
        flash[:success] = "Added item to cart!"
        redirect_to root_path
      else
        render :new
      end     
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to order_items_path
  end

  private
  def order_items_params
    params.permit(:product_id, :quantity, :pending)
  end
end