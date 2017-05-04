require 'test_helper'

class OzonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ozone = ozones(:one)
  end

  test "should get index" do
    get ozones_url
    assert_response :success
  end

  test "should get new" do
    get new_ozone_url
    assert_response :success
  end

  test "should create ozone" do
    assert_difference('Ozone.count') do
      post ozones_url, params: { ozone: { dataOzone: @ozone.dataOzone, node_id: @ozone.node_id } }
    end

    assert_redirected_to ozone_url(Ozone.last)
  end

  test "should show ozone" do
    get ozone_url(@ozone)
    assert_response :success
  end

  test "should get edit" do
    get edit_ozone_url(@ozone)
    assert_response :success
  end

  test "should update ozone" do
    patch ozone_url(@ozone), params: { ozone: { dataOzone: @ozone.dataOzone, node_id: @ozone.node_id } }
    assert_redirected_to ozone_url(@ozone)
  end

  test "should destroy ozone" do
    assert_difference('Ozone.count', -1) do
      delete ozone_url(@ozone)
    end

    assert_redirected_to ozones_url
  end
end
