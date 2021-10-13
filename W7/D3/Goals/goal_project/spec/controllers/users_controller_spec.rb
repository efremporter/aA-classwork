require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do
    it "sets @users instance variable" 
    it "renders the users index" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "renders the show template" do
      User.create!(username: "username", password: "password")
      get :show, id: 1
      expect(response).to render_template(:show)
    end

    context "if the user does not exist" do 
      it "is not a success" do
        begin
          get :show, id: -1
        rescue
          ActiveRecord::RecordNotFound
        end
        expect(response).not_to render_template(:show)
      end
    end
  end
end
