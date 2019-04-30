class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :total_price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
