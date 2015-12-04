require 'rails_helper'

RSpec.describe DoubtController, type: :controller do

  describe "GET #doubts" do
    it "returns http success" do
      get :doubts
      expect(response).to have_http_status(:success)
    end
  end

end
