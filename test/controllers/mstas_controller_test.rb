require 'test_helper'

class MstasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
