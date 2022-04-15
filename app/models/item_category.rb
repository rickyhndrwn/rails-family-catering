class ItemCategory < ApplicationRecord
  belongs_to :items
  belongs_to :categories
end
