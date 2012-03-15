require 'test_helper'

class ItemUserdreamsControllerTest < ActionController::TestCase
  setup do
    @item_userdream = item_userdreams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_userdreams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_userdream" do
    assert_difference('ItemUserdream.count') do
      post :create, item_userdream: @item_userdream.attributes
    end

    assert_redirected_to item_userdream_path(assigns(:item_userdream))
  end

  test "should show item_userdream" do
    get :show, id: @item_userdream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_userdream
    assert_response :success
  end

  test "should update item_userdream" do
    put :update, id: @item_userdream, item_userdream: @item_userdream.attributes
    assert_redirected_to item_userdream_path(assigns(:item_userdream))
  end

  test "should destroy item_userdream" do
    assert_difference('ItemUserdream.count', -1) do
      delete :destroy, id: @item_userdream
    end

    assert_redirected_to item_userdreams_path
  end
end
