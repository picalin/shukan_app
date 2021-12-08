require 'test_helper'

class ShukansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shukan = shukans(:one)
  end

  test "should get index" do
    get shukans_url
    assert_response :success
  end

  test "should get new" do
    get new_shukan_url
    assert_response :success
  end

  test "should create shukan" do
    assert_difference('Shukan.count') do
      post shukans_url, params: { shukan: { done: @shukan.done, position: @shukan.position, title: @shukan.title, user_id: @shukan.user_id } }
    end

    assert_redirected_to shukan_url(Shukan.last)
  end

  test "should show shukan" do
    get shukan_url(@shukan)
    assert_response :success
  end

  test "should get edit" do
    get edit_shukan_url(@shukan)
    assert_response :success
  end

  test "should update shukan" do
    patch shukan_url(@shukan), params: { shukan: { done: @shukan.done, position: @shukan.position, title: @shukan.title, user_id: @shukan.user_id } }
    assert_redirected_to shukan_url(@shukan)
  end

  test "should destroy shukan" do
    assert_difference('Shukan.count', -1) do
      delete shukan_url(@shukan)
    end

    assert_redirected_to shukans_url
  end
end
