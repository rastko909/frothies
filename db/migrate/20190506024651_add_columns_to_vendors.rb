class AddColumnsToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :company_address, :string
    add_column :vendors, :postcode, :integer
    add_column :vendors, :company_description, :string
    add_column :vendors, :abn, :integer
    add_column :vendors, :state, :string
  end
end
