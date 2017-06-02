require 'test_helper'

class DustsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dust = dusts(:one)
  end

  test "should get index" do
    get dusts_url
    assert_response :success
  end

  test "should get new" do
    get new_dust_url
    assert_response :success
  end

  test "should create dust" do
    assert_difference('Dust.count') do
      post dusts_url, params: { dust: { dataDust: @dust.dataDust, node_id: @dust.node_id } }
    end

    assert_redirected_to dust_url(Dust.last)
  end

  test "should show dust" do
    get dust_url(@dust)
    assert_response :success
  end

  test "should get edit" do
    get edit_dust_url(@dust)
    assert_response :success
  end

  test "should update dust" do
    patch dust_url(@dust), params: { dust: { dataDust: @dust.dataDust, node_id: @dust.node_id } }
    assert_redirected_to dust_url(@dust)
  end

  test "should destroy dust" do
    assert_difference('Dust.count', -1) do
      delete dust_url(@dust)
    end

    assert_redirected_to dusts_url
  end
end
