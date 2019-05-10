class OrderItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :user, optional: true
  belongs_to :vendor, optional: true
end
