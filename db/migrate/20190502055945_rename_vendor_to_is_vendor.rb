class RenameVendorToIsVendor < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :vendor, :is_vendor
  end
end
