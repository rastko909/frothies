class AddPendingToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :pending, :boolean
  end
end
