class RemoveVendorFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :vendor, foreign_key: true
  end
end
