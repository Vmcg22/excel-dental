require 'test_helper'

class MedicinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get medicines_new_url
    assert_response :success
  end

end
