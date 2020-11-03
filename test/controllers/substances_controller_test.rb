require 'test_helper'

class SubstancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get substances_new_url
    assert_response :success
  end

end
