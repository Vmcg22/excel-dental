require 'test_helper'

class DiseasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diseases_index_url
    assert_response :success
  end

  test "should get new" do
    get diseases_new_url
    assert_response :success
  end

end
