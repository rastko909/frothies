class Product < ApplicationRecord
  belongs_to :vendor
  has_many :order_items
end
