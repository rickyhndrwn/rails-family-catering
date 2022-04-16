require 'rails_helper'

RSpec.describe ItemsController do
  before :each do
    @category = create(:category)
  end
  
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

  describe 'GET #new' do
    it "assigns a new Item to @item" do
      get :new
      expect(assigns(:item)).to be_a_new(Item)
    end

    it "renders the :new template" do
      get :new
      expect(:response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested item to @item" do
      item = create(:item)
      get :edit, params: { id: item }
      expect(assigns(:item)).to eq item
    end

    it "renders the :edit template" do
      item = create(:item)
      get :edit, params: { id: item }
      expect(response).to render_template :edit
    end
  end
  
  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new item in the database" do
        expect{
          post :create, params: { item: attributes_for(:item) }
        }.to change(Item, :count).by(1)
      end

      it "redirects to the created item" do
        post :create, params: { item: attributes_for(:item) }
        expect(response).to redirect_to(item_path(assigns[:item]))
      end
    end

    context "with invalid attributes" do
      it "does not save the new item in the database" do
        expect{
          post :create, params: { item: attributes_for(:invalid_item) }
        }.not_to change(Item, :count)
      end

      it "re-renders the :new template" do
        post :create, params: { item: attributes_for(:invalid_item) }
        expect(response).to render_template :new
      end
    end
  end

  describe 'PATCH #update' do
    before :each do
      @item = create(:item)
    end
    
    context "with valid attributes" do
      it "locates the requested @item" do
        patch :update, params: { id: @item, item: attributes_for(:item) }
        expect(assigns(:item)).to eq @item
      end

      it "changes @item's attributes" do
        patch :update, params: { id: @item, item: attributes_for(:item, name: 'Nasi Uduk') }
        @item.reload
        expect(@item.name).to eq('Nasi Uduk')
      end

      it "redirects to the item" do
        patch :update, params: { id: @item, item: attributes_for(:item) }
        expect(response).to redirect_to @item
      end
    end

    context "with invalid attributes" do
      it "does not update the item in the database" do
        expect{
          patch :update, params: { id: @item, item: attributes_for(:invalid_item) }
        }.not_to change(Item, :name)
      end
      
      it "re-renders the :edit template" do
        patch :update, params: { id: @item, item: attributes_for(:invalid_item) }
        expect(response).to render_template :edit
      end
    end
  end

  describe 'DELETE #destroy' do
    before :each do
      @item = create(:item)
    end
    
    it "deletes the item from the database" do
      expect{
        delete :destroy, params: { id: @item }
      }.to change(Item, :count).by(-1)
    end

    it "redirects to items#index" do
      delete :destroy, params: { id: @item }
      expect(response).to redirect_to items_url
    end
  end
end
