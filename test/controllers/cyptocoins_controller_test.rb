require "test_helper"

class CyptocoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cyptocoin = cyptocoins(:one)
  end

  test "should get index" do
    get cyptocoins_url
    assert_response :success
  end

  test "should get new" do
    get new_cyptocoin_url
    assert_response :success
  end

  test "should create cyptocoin" do
    assert_difference('Cyptocoin.count') do
      post cyptocoins_url, params: { cyptocoin: { acronym: @cyptocoin.acronym, description: @cyptocoin.description, image_url: @cyptocoin.image_url } }
    end

    assert_redirected_to cyptocoin_url(Cyptocoin.last)
  end

  test "should show cyptocoin" do
    get cyptocoin_url(@cyptocoin)
    assert_response :success
  end

  test "should get edit" do
    get edit_cyptocoin_url(@cyptocoin)
    assert_response :success
  end

  test "should update cyptocoin" do
    patch cyptocoin_url(@cyptocoin), params: { cyptocoin: { acronym: @cyptocoin.acronym, description: @cyptocoin.description, image_url: @cyptocoin.image_url } }
    assert_redirected_to cyptocoin_url(@cyptocoin)
  end

  test "should destroy cyptocoin" do
    assert_difference('Cyptocoin.count', -1) do
      delete cyptocoin_url(@cyptocoin)
    end

    assert_redirected_to cyptocoins_url
  end
end
