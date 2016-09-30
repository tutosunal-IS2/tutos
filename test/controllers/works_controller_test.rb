require 'test_helper'

class WorksControllerTest < ActionDispatch::IntegrationTest
  test "should get works" do
    get works_works_url
    assert_response :success
  end

end
