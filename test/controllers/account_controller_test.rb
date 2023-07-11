require "test_helper"

class AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_index_url
    assert_response :success
  end

  test "should get properties" do
    get account_properties_url
    assert_response :success
  end

  test "should get reports" do
    get account_reports_url
    assert_response :success
  end
end
