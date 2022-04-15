class ItemCategory < ApplicationRecord
  belongs_to :items
  belongs_to :categories

  validates :items, :presence=>true
  validates :categories, :presence=>true
end
