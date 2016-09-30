require 'test_helper'

class IntroControllerTest < ActionDispatch::IntegrationTest
  test "should get renderEntrar" do
    get intro_renderEntrar_url
    assert_response :success
  end

end
