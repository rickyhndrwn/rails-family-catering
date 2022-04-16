FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    email { Faker::Internet.free_email }
  end

  factory :invalid_customer, parent: :customer do
    name { nil }
    email { nil }
  end
end
