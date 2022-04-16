class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, length: { maximum: 150 }
  validates :price, presence: true, numericality: { only_float: true, greater_than_or_equal_to: 0.01 }
  validate :must_have_one_category

  has_many :categorizations
  has_many :categories, through: :categorizations

  private

  def must_have_one_category
    errors.add(:base, 'Select at least one category') unless category_ids.length > 0
  end
end
