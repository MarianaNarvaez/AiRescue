require 'test_helper'

class CarbonMonoxidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carbon_monoxide = carbon_monoxides(:one)
  end

  test "should get index" do
    get carbon_monoxides_url
    assert_response :success
  end

  test "should get new" do
    get new_carbon_monoxide_url
    assert_response :success
  end

  test "should create carbon_monoxide" do
    assert_difference('CarbonMonoxide.count') do
      post carbon_monoxides_url, params: { carbon_monoxide: { dataMonoxide: @carbon_monoxide.dataMonoxide, node_id: @carbon_monoxide.node_id } }
    end

    assert_redirected_to carbon_monoxide_url(CarbonMonoxide.last)
  end

  test "should show carbon_monoxide" do
    get carbon_monoxide_url(@carbon_monoxide)
    assert_response :success
  end

  test "should get edit" do
    get edit_carbon_monoxide_url(@carbon_monoxide)
    assert_response :success
  end

  test "should update carbon_monoxide" do
    patch carbon_monoxide_url(@carbon_monoxide), params: { carbon_monoxide: { dataMonoxide: @carbon_monoxide.dataMonoxide, node_id: @carbon_monoxide.node_id } }
    assert_redirected_to carbon_monoxide_url(@carbon_monoxide)
  end

  test "should destroy carbon_monoxide" do
    assert_difference('CarbonMonoxide.count', -1) do
      delete carbon_monoxide_url(@carbon_monoxide)
    end

    assert_redirected_to carbon_monoxides_url
  end
end
