require "test_helper"

class FoodbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foodbank = foodbanks(:one)
  end

  test "should get index" do
    get foodbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_foodbank_url
    assert_response :success
  end

  test "should create foodbank" do
    assert_difference("Foodbank.count") do
      post foodbanks_url, params: { foodbank: { address: @foodbank.address, city: @foodbank.city, email: @foodbank.email, name: @foodbank.name, phone: @foodbank.phone, state: @foodbank.state, zipcode: @foodbank.zipcode } }
    end

    assert_redirected_to foodbank_url(Foodbank.last)
  end

  test "should show foodbank" do
    get foodbank_url(@foodbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_foodbank_url(@foodbank)
    assert_response :success
  end

  test "should update foodbank" do
    patch foodbank_url(@foodbank), params: { foodbank: { address: @foodbank.address, city: @foodbank.city, email: @foodbank.email, name: @foodbank.name, phone: @foodbank.phone, state: @foodbank.state, zipcode: @foodbank.zipcode } }
    assert_redirected_to foodbank_url(@foodbank)
  end

  test "should destroy foodbank" do
    assert_difference("Foodbank.count", -1) do
      delete foodbank_url(@foodbank)
    end

    assert_redirected_to foodbanks_url
  end
end
