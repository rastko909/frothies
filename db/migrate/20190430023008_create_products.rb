class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :category
      t.decimal :abv, precision: 8, scale: 2
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
