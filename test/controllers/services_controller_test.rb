require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get services" do
    get services_services_url
    assert_response :success
  end

end
