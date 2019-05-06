class ChangeAbnToBeBigintInVendors < ActiveRecord::Migration[5.2]
  def change
    change_column :vendors, :abn, :bigint
  end
end
