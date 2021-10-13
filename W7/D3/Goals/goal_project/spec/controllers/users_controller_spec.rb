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

  describe "GET #new" do
    it "renders the new template" do
      get :new
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with invalid params" do
      it "renders the new template" do
        post :create, user: { username: "bob43" }
        expect(response).to render_template(:new)
      end
    end

    context "with valid params" do
      it "redirect to user page on success" do
        post :create, user: { username: "stev56", password: "password45" }
        expect(response).to redirect_to(user_url(User.find_by(username: 'stev56')))
      end
    end
  end

end
