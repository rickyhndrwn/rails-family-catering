# require 'rails_helper'

# RSpec.describe "orders/index", type: :view do
#   before(:each) do
#     assign(:orders, [
#       Order.create!(
#         order_date: "Order Date",
#         total_price: 2.5,
#         status: "Status"
#       ),
#       Order.create!(
#         order_date: "Order Date",
#         total_price: 2.5,
#         status: "Status"
#       )
#     ])
#   end

#   it "renders a list of orders" do
#     render
#     assert_select "tr>td", text: "Order Date".to_s, count: 2
#     assert_select "tr>td", text: 2.5.to_s, count: 2
#     assert_select "tr>td", text: "Status".to_s, count: 2
#   end
# end
