class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :create_vendor_account, if: :devise_controller?

  protected
      def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :first_name, :last_name, :address, :state, :postcode, :is_vendor, :company_name])
      end

      def create_vendor_account
        unless current_user == nil 
            if current_user.is_vendor == true && current_user.vendor == nil 
                vendor = Vendor.new(user_id: current_user.id)
                vendor.save 
            end
        end
      end
end
