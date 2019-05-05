module ApplicationHelper

    # global method: count items in 'cart' according to user logged in
    def count_items_in_cart
      @cart_count = 0
      unless current_user == nil
      @cart_count = OrderItem.where(user: current_user.id, pending: true).count
      end
      return @cart_count
    end

end
