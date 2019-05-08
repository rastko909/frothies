class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :quantity
      t.references :product
      t.references :user
      t.references :order
      # testing something
      # t.references :vendor, index: true

      t.timestamps
    end
    # add_foreign_key :order_items, :vendor, column: :vendor_id
  end
end
