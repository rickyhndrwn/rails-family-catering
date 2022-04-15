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

  describe 'GET #show' do
    it "assigns the requested item to @item" do
      item = create(:item)
      get :show, params: { id: item }
      expect(assigns(:item)).to eq item
    end
    it "renders the :show template" do
      item = create(:item)
      get :show, params: { id: item }
      expect(response).to render_template :show
    end
  end
end
