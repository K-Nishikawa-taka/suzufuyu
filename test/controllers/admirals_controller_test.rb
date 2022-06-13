require 'test_helper'

class AdmiralsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admirals_show_url
    assert_response :success
  end

end
