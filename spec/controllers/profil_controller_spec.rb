require 'rails_helper'

RSpec.describe ProfilController, type: :controller do

  describe "GET #profil" do
    it "returns http success" do
      get :profil
      expect(response).to have_http_status(:success)
    end
  end

end
