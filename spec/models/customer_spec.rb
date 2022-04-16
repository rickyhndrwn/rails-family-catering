require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is valid with a name and an email' do
    expect(FactoryBot.build(:customer)).to be_valid
  end
end
