require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do
    it "sets @users instance variable" 
    it "renders the users index" do
      get :index
      expect(response).to be_success
    end
  end
end
