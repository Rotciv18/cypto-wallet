require "test_helper"

class CryptocoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cryptocoin = cryptocoins(:one)
  end

  test "should get index" do
    get cryptocoins_url
    assert_response :success
  end

  test "should get new" do
    get new_cryptocoin_url
    assert_response :success
  end

  test "should create cryptocoin" do
    assert_difference('Cryptocoin.count') do
      post cryptocoins_url, params: { cryptocoin: { acronym: @cryptocoin.acronym, description: @cryptocoin.description, image_url: @cryptocoin.image_url } }
    end

    assert_redirected_to cryptocoin_url(Cryptocoin.last)
  end

  test "should show cryptocoin" do
    get cryptocoin_url(@cryptocoin)
    assert_response :success
  end

  test "should get edit" do
    get edit_cryptocoin_url(@cryptocoin)
    assert_response :success
  end

  test "should update cryptocoin" do
    patch cryptocoin_url(@cryptocoin), params: { cryptocoin: { acronym: @cryptocoin.acronym, description: @cryptocoin.description, image_url: @cryptocoin.image_url } }
    assert_redirected_to cryptocoin_url(@cryptocoin)
  end

  test "should destroy cryptocoin" do
    assert_difference('Cryptocoin.count', -1) do
      delete cryptocoin_url(@cryptocoin)
    end

    assert_redirected_to cryptocoins_url
  end
end
