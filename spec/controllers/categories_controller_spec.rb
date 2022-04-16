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
end
