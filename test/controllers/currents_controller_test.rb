require 'test_helper'

class CurrentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get currents_new_url
    assert_response :success
  end

  test "should get create" do
    get currents_create_url
    assert_response :success
  end

end
