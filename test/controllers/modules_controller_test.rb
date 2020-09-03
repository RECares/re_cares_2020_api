require 'test_helper'

class ModulesControllerTest < ActionDispatch::IntegrationTest
  test "should get passwords" do
    get modules_passwords_url
    assert_response :success
  end

end
