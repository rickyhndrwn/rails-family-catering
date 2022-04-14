FactoryBot.define do
  factory :item do
    name { Faker::Food.dish }
    description { Faker::Food.description[0..50] }
    price { 10000.0 }
  end
end
