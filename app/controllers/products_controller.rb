class ProductsController < ApplicationController
  authorize_resource
  def index
    @products = Product.all 
  end

  def new 
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.vendor_id = current_user.vendor.id 
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def edit 
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end


  private
  def product_params
    params.permit(:title, :description, :image_url, :category, :abv, :price, :quantity)
  end
end
