require "test_helper"

class AuthomorphNumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get authomorph_numbers_input_url
    assert_response :success
  end

  test "should get view" do
    get authomorph_numbers_view_url
    assert_response :success
  end

  test "should return result [1, 5, 6] if N = 12" do
    get authomorph_numbers_view_url, params: {n: 12}
    assert_select "td" , '1'
    assert_select "td" , '5'
    assert_select "td" , '6'
  end

  test "should display an error when N <= 0" do
    get authomorph_numbers_view_url, params: {n: -1}
    assert_select "h3", "N <= 0"
  end
end
