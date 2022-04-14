class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, length: { maximum: 150 }
  validates :price, presence: true, numericality: { only_float: true, greater_than_or_equal_to: 0.01 }

  has_many :item_categories
end
