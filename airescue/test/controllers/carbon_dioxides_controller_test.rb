require 'test_helper'

class CarbonDioxidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carbon_dioxide = carbon_dioxides(:one)
  end

  test "should get index" do
    get carbon_dioxides_url
    assert_response :success
  end

  test "should get new" do
    get new_carbon_dioxide_url
    assert_response :success
  end

  test "should create carbon_dioxide" do
    assert_difference('CarbonDioxide.count') do
      post carbon_dioxides_url, params: { carbon_dioxide: { dataDioxide: @carbon_dioxide.dataDioxide, node_id: @carbon_dioxide.node_id } }
    end

    assert_redirected_to carbon_dioxide_url(CarbonDioxide.last)
  end

  test "should show carbon_dioxide" do
    get carbon_dioxide_url(@carbon_dioxide)
    assert_response :success
  end

  test "should get edit" do
    get edit_carbon_dioxide_url(@carbon_dioxide)
    assert_response :success
  end

  test "should update carbon_dioxide" do
    patch carbon_dioxide_url(@carbon_dioxide), params: { carbon_dioxide: { dataDioxide: @carbon_dioxide.dataDioxide, node_id: @carbon_dioxide.node_id } }
    assert_redirected_to carbon_dioxide_url(@carbon_dioxide)
  end

  test "should destroy carbon_dioxide" do
    assert_difference('CarbonDioxide.count', -1) do
      delete carbon_dioxide_url(@carbon_dioxide)
    end

    assert_redirected_to carbon_dioxides_url
  end
end
