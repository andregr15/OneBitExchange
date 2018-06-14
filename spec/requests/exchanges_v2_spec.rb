require 'rails_helper'

RSpec.describe 'ExchangesV2', type: :request do
  describe 'GET #exchanges_v2' do
    it 'returns http success' do
      get '/v2'
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #convert' do
    before do
      @amount = rand(1..9999)
    end

    it 'returns http success' do
      get exchanges_v2_convert_path, params: {
        source_currency_v2: 'BRL',
        target_currency_v2: 'BTC',
        amount_v2: @amount
      }
      expect(response).to have_http_status(200)
    end
  end
end
