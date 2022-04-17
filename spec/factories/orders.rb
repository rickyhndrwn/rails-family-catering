FactoryBot.define do
  factory :order do
    order_date { "MyString" }
    total_price { 1.5 }
    status { "MyString" }
  end
end
