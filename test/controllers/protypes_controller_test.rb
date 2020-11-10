require 'test_helper'

class ProtypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get protypes_index_url
    assert_response :success
  end

end
