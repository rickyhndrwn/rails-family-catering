class Order < ApplicationRecord
  validates :order_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true

  belongs_to :customer

  has_many :carts
  has_many :items, through: :carts
end
