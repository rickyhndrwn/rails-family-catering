require 'rails_helper'

RSpec.describe ItemCategory, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:item_category)).to be_valid
  end

  it 'is valid with an item id and a category id' do
    expect(FactoryBot.build(:item_category)).to be_valid
  end

  it 'is invalid without belongs_to association to Item' do
    item_category = ItemCategory.reflect_on_association(:items).macro
    expect(item_category).to eq(:belongs_to)
  end
end
