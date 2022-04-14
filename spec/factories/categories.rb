FactoryBot.define do
  factory :category do
    name { Faker::Appliance.brand }
  end
end
