FactoryBot.define do
  factory :item_category do
    item_id { Faker::Number.within(range: 1..10) }
    category_id { Faker::Number.within(range: 1..10) }
  end
end
