require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is valid with a name and an email' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is invalid without a name' do
    customer = FactoryBot.build(:customer, name: nil)
    customer.valid?
    expect(customer.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without an email' do
    customer = FactoryBot.build(:customer, email: nil)
    customer.valid?
    expect(customer.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email" do
    cus1 = FactoryBot.create(:customer, email: 'email@mail.com')
    cus2 = FactoryBot.build(:customer, email: 'email@mail.com')
    cus2.valid?
    expect(cus2.errors[:email]).to include("has already been taken")
  end

  it 'is invalid with a wrong format email' do
    customer = FactoryBot.build(:customer, email: 'wrong format email')
    customer.valid?
    expect(customer.errors[:email]).to include("wrong format")
  end
end
