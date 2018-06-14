class ExchangesV2Controller < ApplicationController
  def index
  end

  def convert
    value = ExchangeServiceV2.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    render json: {"value": value}
  end
end
