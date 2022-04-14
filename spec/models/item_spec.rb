require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:item)).to be_valid
  end

  it 'is valid with a name and a price' do
    expect(FactoryBot.build(:item)).to be_valid
  end
end
