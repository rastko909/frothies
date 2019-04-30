class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :company_name
      t.decimal :sales_total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
