require 'rails_helper'

RSpec.describe ItemCategory, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:item)).to be_valid
  end
end
