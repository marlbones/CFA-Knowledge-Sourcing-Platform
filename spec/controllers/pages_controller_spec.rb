require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #new_user" do

    it "returns http success" do
      sign_in_valid_user

      get :home
      expect(response).to have_http_status(:success)
    end

    def sign_in_valid_user
      user = User.create(:email => "test@test.com")
      controller.sign_in user
      user
    end

  end

end
