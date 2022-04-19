class Cart < ApplicationRecord
  belongs_to :order
  belongs_to :item

  before_save :set_price, :set_sub_total_price

	def set_price
		self.price = self.menu.price
	end

	def set_sub_total_price
		self.sub_total_price = self.quantity * self.price
	end
end
