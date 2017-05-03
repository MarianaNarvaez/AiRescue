require 'test_helper'

class CarbonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carbon = carbons(:one)
  end

  test "should get index" do
    get carbons_url
    assert_response :success
  end

  test "should get new" do
    get new_carbon_url
    assert_response :success
  end

  test "should create carbon" do
    assert_difference('Carbon.count') do
      post carbons_url, params: { carbon: { dataCarbon: @carbon.dataCarbon, node_id: @carbon.node_id } }
    end

    assert_redirected_to carbon_url(Carbon.last)
  end

  test "should show carbon" do
    get carbon_url(@carbon)
    assert_response :success
  end

  test "should get edit" do
    get edit_carbon_url(@carbon)
    assert_response :success
  end

  test "should update carbon" do
    patch carbon_url(@carbon), params: { carbon: { dataCarbon: @carbon.dataCarbon, node_id: @carbon.node_id } }
    assert_redirected_to carbon_url(@carbon)
  end

  test "should destroy carbon" do
    assert_difference('Carbon.count', -1) do
      delete carbon_url(@carbon)
    end

    assert_redirected_to carbons_url
  end
end
