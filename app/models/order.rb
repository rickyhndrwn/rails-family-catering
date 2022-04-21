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

  def self.by_order_date(order_date)
    where('order_date == ?', order_date).order(status: :desc)
  end

  def self.get_todays_date
    Time.now.strftime('%Y-%m-%d')
  end

  def self.by_customer_email(email)
    joins(:customer).where('customers.email == ?', email).order(status: :desc)
  end

  def self.by_total_price(total_price)
    where('total_price >= ?', total_price).where('status == ?', 'PAID').order(total_price: :desc)
  end
end
