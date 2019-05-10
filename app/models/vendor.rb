class Vendor < ApplicationRecord
  belongs_to :user
  has_many :products
  has_one_attached :company_logo
  has_many :order_items
end
