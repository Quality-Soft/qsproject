require 'rails_helper'

RSpec.describe WhoAreWeController, type: :controller do

  describe "GET #waw" do
    it "returns http success" do
      get :waw
      expect(response).to have_http_status(:success)
    end
  end

end
