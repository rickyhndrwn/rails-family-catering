require 'rails_helper'

RSpec.describe CustomersController do
  describe 'GET #index' do
    it "populates an array of all customers" do 
      nasi_uduk = create(:customer, name: "Nasi Uduk")
      kerak_telor = create(:customer, name: "Kelar Telor")
      get :index
      expect(assigns(:customers)).to match_array([nasi_uduk, kerak_telor])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end
end