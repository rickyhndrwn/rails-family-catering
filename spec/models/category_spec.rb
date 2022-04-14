require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it 'is valid with a name' do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it 'is invalid without a name' do
    category = FactoryBot.build(:category, name: nil)
    category.valid?
    expect(category.errors[:name]).to include("can't be blank")
  end
end
