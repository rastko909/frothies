class AddVendorToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :vendor, :boolean
  end
end
