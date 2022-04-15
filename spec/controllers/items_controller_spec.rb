require 'rails_helper'

RSpec.describe ItemsController do
  describe 'GET #index' do
    it "populates an array of all items" do 
      nasi_uduk = create(:item, name: "Nasi Uduk")
      kerak_telor = create(:item, name: "Kelar Telor")
      get :index
      expect(assigns(:items)).to match_array([nasi_uduk, kerak_telor])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end
end
