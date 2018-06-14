require 'rest-client'
require 'json'

class ExchangeServiceV2
  def initialize(source_currency, target_currency, amount) 
    @source_currency = source_currency
    @target_currency = target_currency
    @amount = amount.to_f
  end

  def perform
    begin
      url = "https://min-api.cryptocompare.com/data/price?fsym=#{@source_currency}&tsyms=#{@target_currency}"
      res = RestClient.get url

      value = JSON.parse(res.body)[@target_currency].to_f      
      value * @amount
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end