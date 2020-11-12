require 'test_helper'

class MedicalAppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medical_appointments_index_url
    assert_response :success
  end

  test "should get new" do
    get medical_appointments_new_url
    assert_response :success
  end

end
