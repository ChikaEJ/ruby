require 'test_helper'

class ShopControllerTest < ActionController::TestCase
  test "should get products_index" do
    get :products_index
    assert_response :success
  end

end
