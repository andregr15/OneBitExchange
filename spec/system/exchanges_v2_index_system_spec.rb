require 'rails_helper'

RSpec.describe 'Exchange Currency V2 Proccess',  :type => :system, js: true do
  it 'exchange value' do
    visit exchanges_v2_index_path
    within('#exchange_form') do
      select('BTC', from: 'source_currency_v2')
      select('ETH', from: 'target_currency_v2')
      fill_in 'amount_v2', with: '10'
    end
    click_button 'btn_change_currencys_v2'

    expect(page).to have_content("value")
  end
end