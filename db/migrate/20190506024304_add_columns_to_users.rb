class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :state, :string
    add_column :users, :postcode, :integer
  end
end
