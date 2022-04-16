require 'rails_helper'

RSpec.describe CategoriesController do
  describe 'GET #index' do
    it "populates an array of all categories" do 
      food = create(:category)
      drink = create(:category, name: "Drink")
      get :index
      expect(assigns(:categories)).to match_array([food, drink])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "assigns the requested category to @category" do
      category = create(:category)
      get :show, params: { id: category }
      expect(assigns(:category)).to eq category
    end
    it "renders the :show template" do
      category = create(:category)
      get :show, params: { id: category }
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it "assigns a new Category to @category" do
      get :new
      expect(assigns(:category)).to be_a_new(Category)
    end

    it "renders the :new template" do
      get :new
      expect(:response).to render_template :new
    end
  end
end
