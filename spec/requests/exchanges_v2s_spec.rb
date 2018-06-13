require 'rails_helper'

RSpec.describe "ExchangesV2s", type: :request do
  describe "GET /exchanges_v2s" do
    it "works! (now write some real specs)" do
      get exchanges_v2s_path
      expect(response).to have_http_status(200)
    end
  end
end
