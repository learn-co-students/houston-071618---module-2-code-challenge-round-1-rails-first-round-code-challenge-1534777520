require 'test_helper'

class HeroinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heroine = heroines(:one)
  end

  test "should get index" do
    get heroines_url
    assert_response :success
  end

  test "should get new" do
    get new_heroine_url
    assert_response :success
  end

  test "should create heroine" do
    assert_difference('Heroine.count') do
      post heroines_url, params: { heroine: {  } }
    end

    assert_redirected_to heroine_url(Heroine.last)
  end

  test "should show heroine" do
    get heroine_url(@heroine)
    assert_response :success
  end

  test "should get edit" do
    get edit_heroine_url(@heroine)
    assert_response :success
  end

  test "should update heroine" do
    patch heroine_url(@heroine), params: { heroine: {  } }
    assert_redirected_to heroine_url(@heroine)
  end

  test "should destroy heroine" do
    assert_difference('Heroine.count', -1) do
      delete heroine_url(@heroine)
    end

    assert_redirected_to heroines_url
  end
end
