class ProductsController < ApplicationController

  def index
    if user_signed_in? 
      @user = current_user
      @user_id = current_user.id 
      @first_name = current_user.first_name
      @last_name = current_user.last_name 

      if @user.is_vendor? == true 
          @company_name = @user.vendor.company_name
      end
    end
    @beers = Product.all 
  end

  # def new 
  #   @product = Product.new
  # end

  def create
    new_product = Product.new(product_params)
    new_product.vendor_id = current_user.vendor.id 
    if new_product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  private
  def product_params
    params.permit(:title, :description, :image_url, :category, :abv, :price, :quantity)
  end
end
