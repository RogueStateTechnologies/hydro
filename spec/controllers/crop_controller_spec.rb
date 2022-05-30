require 'rails_helper'

RSpec.describe CropsController, type: :controller do

  login_user

  describe "POST crops#create" do
    it "returns a success response" do
     post create, FactoryBot.attributes_for(:crop)
    end
  end

  describe "GET crops#index" do
    it 'returns a success response' do 
      get :index, params: {}

      expect(response).to be_successful
    end
  end

    describe "GET crops#show" do
      it "returns a success response" do 
        get :show, params: { id: Crop.first.id }
  
        expect(response).to be_successful
      end
    end
end