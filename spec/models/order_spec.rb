require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it 'is valid with an order date, a total price, and a status' do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it 'is invalid without an order date' do
    order = FactoryBot.build(:order, order_date: nil)
    order.valid?
    expect(order.errors[:order_date]).to include("can't be blank")
  end

  it 'is invalid without a total price' do
    order = FactoryBot.build(:order, total_price: nil)
    order.valid?
    expect(order.errors[:total_price]).to include("can't be blank")
  end

  it 'is invalid without a status' do
    order = FactoryBot.build(:order, status: nil)
    order.valid?
    expect(order.errors[:status]).to include("can't be blank")
  end
end
