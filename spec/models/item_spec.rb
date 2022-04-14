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
end
