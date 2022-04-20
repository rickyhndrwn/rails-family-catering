class Order < ApplicationRecord
  validates :order_date, presence: true
  validates :total_price, presence: true
  validates :status, presence: true
  validates_presence_of :carts, message: 'cannot be empty'

  belongs_to :customer

  has_many :carts, dependent: :delete_all
  has_many :items, through: :carts

  accepts_nested_attributes_for :carts, allow_destroy: true
	
	def total_price
	  self.carts.map { |cart| cart.sub_total_price }.sum
	end
end
