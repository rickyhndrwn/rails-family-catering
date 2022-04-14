require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:item)).to be_valid
  end

  it 'is valid with a name and a price' do
    expect(FactoryBot.build(:item)).to be_valid
  end

  it 'is invalid without a name' do
    item = FactoryBot.build(:item, name: nil)
    item.valid?
    expect(item.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a price' do
    item = FactoryBot.build(:item, price: nil)
    item.valid?
    expect(item.errors[:price]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    item1 = FactoryBot.create(:item, name: 'Nasi Uduk')
    item2 = FactoryBot.build(:item, name: 'Nasi Uduk')
    item2.valid?
    expect(item2.errors[:name]).to include("has already been taken")
  end

  it 'is invalid with a less than 0.01 for price' do
    item = FactoryBot.build(:item, price: 0.009)
    item.valid?
    expect(item.errors[:price]).to include('must be greater than or equal to 0.01')
  end

  it 'is invalid with a more than 150 characters for description' do
    item = FactoryBot.build(:item, description: "deskripsi" * 17)
    item.valid?
    expect(item.errors[:description]).to include('is too long (maximum is 150 characters)')
  end

  it 'is invalid without has_many association to ItemCategory' do
    item = Item.reflect_on_association(:item_categories).macro
    expect(item).to eq(:has_many)
  end
end
