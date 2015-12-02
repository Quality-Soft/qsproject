require 'rails_helper'

RSpec.describe PartnerController, type: :controller do

  describe "GET #partnes" do
    it "returns http success" do
      get :partnes
      expect(response).to have_http_status(:success)
    end
  end

end
