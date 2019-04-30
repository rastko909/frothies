class RemoveProductFromVendors < ActiveRecord::Migration[5.2]
  def change
    remove_reference :vendors, :product, foreign_key: true
  end
end
