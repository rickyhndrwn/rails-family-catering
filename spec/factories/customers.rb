FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    email { Faker::Internet.free_email }
  end
end
