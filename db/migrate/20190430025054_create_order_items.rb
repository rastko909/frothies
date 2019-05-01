class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :quantity
      t.references :product
      t.references :user
      t.references :order

      t.timestamps
    end
  end
end
