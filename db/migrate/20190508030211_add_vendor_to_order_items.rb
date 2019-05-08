class AddVendorToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :vendor, foreign_key: true
  end
end
