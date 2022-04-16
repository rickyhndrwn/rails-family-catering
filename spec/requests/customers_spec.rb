require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

# RSpec.describe "/customers", type: :request do
  
#   # This should return the minimal set of attributes required to create a valid
#   # Customer. As you add validations to Customer, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     skip("Add a hash of attributes valid for your model")
#   }

#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }

#   describe "GET /index" do
#     it "renders a successful response" do
#       Customer.create! valid_attributes
#       get customers_url
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /show" do
#     it "renders a successful response" do
#       customer = Customer.create! valid_attributes
#       get customer_url(customer)
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /new" do
#     it "renders a successful response" do
#       get new_customer_url
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /edit" do
#     it "renders a successful response" do
#       customer = Customer.create! valid_attributes
#       get edit_customer_url(customer)
#       expect(response).to be_successful
#     end
#   end

#   describe "POST /create" do
#     context "with valid parameters" do
#       it "creates a new Customer" do
#         expect {
#           post customers_url, params: { customer: valid_attributes }
#         }.to change(Customer, :count).by(1)
#       end

#       it "redirects to the created customer" do
#         post customers_url, params: { customer: valid_attributes }
#         expect(response).to redirect_to(customer_url(Customer.last))
#       end
#     end

#     context "with invalid parameters" do
#       it "does not create a new Customer" do
#         expect {
#           post customers_url, params: { customer: invalid_attributes }
#         }.to change(Customer, :count).by(0)
#       end

#       it "renders a successful response (i.e. to display the 'new' template)" do
#         post customers_url, params: { customer: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe "PATCH /update" do
#     context "with valid parameters" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }

#       it "updates the requested customer" do
#         customer = Customer.create! valid_attributes
#         patch customer_url(customer), params: { customer: new_attributes }
#         customer.reload
#         skip("Add assertions for updated state")
#       end

#       it "redirects to the customer" do
#         customer = Customer.create! valid_attributes
#         patch customer_url(customer), params: { customer: new_attributes }
#         customer.reload
#         expect(response).to redirect_to(customer_url(customer))
#       end
#     end

#     context "with invalid parameters" do
#       it "renders a successful response (i.e. to display the 'edit' template)" do
#         customer = Customer.create! valid_attributes
#         patch customer_url(customer), params: { customer: invalid_attributes }
#         expect(response).to be_successful
#       end
#     end
#   end

#   describe "DELETE /destroy" do
#     it "destroys the requested customer" do
#       customer = Customer.create! valid_attributes
#       expect {
#         delete customer_url(customer)
#       }.to change(Customer, :count).by(-1)
#     end

#     it "redirects to the customers list" do
#       customer = Customer.create! valid_attributes
#       delete customer_url(customer)
#       expect(response).to redirect_to(customers_url)
#     end
#   end
# end
