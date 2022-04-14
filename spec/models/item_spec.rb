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
end
