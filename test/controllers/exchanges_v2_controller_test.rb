require 'test_helper'

class ExchangesV2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exchanges_v2_index_url
    assert_response :success
  end

  test "should get convert" do
    get exchanges_v2_convert_url
    assert_response :success
  end

end
