require 'rails_helper'

RSpec.describe ContactUsController, type: :controller do

  describe "GET #contacts" do
    it "returns http success" do
      get :contacts
      expect(response).to have_http_status(:success)
    end
  end

end
