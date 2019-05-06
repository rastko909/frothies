class VendorsController < ApplicationController
  def index
    @products = Product.where(vendor_id: current_user.vendor.id)
  end

  def new
  end

  def edit
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  private 
  
end
