require 'rails_helper'
require 'json'

describe 'Currency v2' do
  it 'exchange v2' do
    amount = rand(0..9999)
    res = ExchangeServiceV2.new('BRL', 'BTC', amount).perform
    expect(res.is_a? Numeric).to eql(true)
    expect(res != 0 || amount == 0).to eql(true)
  end
end