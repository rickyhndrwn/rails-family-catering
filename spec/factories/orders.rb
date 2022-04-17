FactoryBot.define do
  factory :order do
    order_date { Faker::Date.between(from: '2014-09-23', to: '2015-09-25') }
    total_price { 1.5 }
    status { "MyString" }
  end
end
