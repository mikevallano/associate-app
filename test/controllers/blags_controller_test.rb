require 'test_helper'

class BlagsControllerTest < ActionController::TestCase
  setup do
    @blag = blags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blag" do
    assert_difference('Blag.count') do
      post :create, blag: { name: @blag.name }
    end

    assert_redirected_to blag_path(assigns(:blag))
  end

  test "should show blag" do
    get :show, id: @blag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blag
    assert_response :success
  end

  test "should update blag" do
    patch :update, id: @blag, blag: { name: @blag.name }
    assert_redirected_to blag_path(assigns(:blag))
  end

  test "should destroy blag" do
    assert_difference('Blag.count', -1) do
      delete :destroy, id: @blag
    end

    assert_redirected_to blags_path
  end
end
