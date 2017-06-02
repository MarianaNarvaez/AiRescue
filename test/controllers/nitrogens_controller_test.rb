require 'test_helper'

class NitrogensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nitrogen = nitrogens(:one)
  end

  test "should get index" do
    get nitrogens_url
    assert_response :success
  end

  test "should get new" do
    get new_nitrogen_url
    assert_response :success
  end

  test "should create nitrogen" do
    assert_difference('Nitrogen.count') do
      post nitrogens_url, params: { nitrogen: { dataNitrogen: @nitrogen.dataNitrogen, node_id: @nitrogen.node_id } }
    end

    assert_redirected_to nitrogen_url(Nitrogen.last)
  end

  test "should show nitrogen" do
    get nitrogen_url(@nitrogen)
    assert_response :success
  end

  test "should get edit" do
    get edit_nitrogen_url(@nitrogen)
    assert_response :success
  end

  test "should update nitrogen" do
    patch nitrogen_url(@nitrogen), params: { nitrogen: { dataNitrogen: @nitrogen.dataNitrogen, node_id: @nitrogen.node_id } }
    assert_redirected_to nitrogen_url(@nitrogen)
  end

  test "should destroy nitrogen" do
    assert_difference('Nitrogen.count', -1) do
      delete nitrogen_url(@nitrogen)
    end

    assert_redirected_to nitrogens_url
  end
end
