class ProductsController < ApplicationController

  def index
    if user_signed_in? 
      @user = current_user
      @user_id = current_user.id 
      @first_name = current_user.first_name
      @last_name = current_user.last_name 

      if @user.vendor == true 
        @user.vendors.each do |item|
          @company_name = item.company_name
        end
      end
    end
    @beers = Product.all 
  end
end
