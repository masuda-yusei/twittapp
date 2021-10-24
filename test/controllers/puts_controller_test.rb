require 'test_helper'

class PutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get puts_index_url
    assert_response :success
  end

end
