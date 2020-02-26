require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    p assigns(:example)
    get login_path
    assert_response :success
  end
end
