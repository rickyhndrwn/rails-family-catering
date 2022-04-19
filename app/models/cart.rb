class Cart < ApplicationRecord
  belongs_to :order
  belongs_to :item

  before_save :set_price, :set_subtotal

	def set_price
		self.price = self.menu.price
	end

	def set_subtotal
		self.sub_total = self.quantity * self.price
	end
end
