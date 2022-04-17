class Order < ApplicationRecord
  validates :order_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true
end
