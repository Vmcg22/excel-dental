require 'test_helper'

class MedicalFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get medical_files_new_url
    assert_response :success
  end

end
