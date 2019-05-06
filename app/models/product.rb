class Product < ApplicationRecord
  belongs_to :vendor
  has_many :order_items
  # has_one_attached :image_url
end
