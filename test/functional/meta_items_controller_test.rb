require 'test_helper'

class MetaItemsControllerTest < ActionController::TestCase
  setup do
    @meta_item = meta_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meta_item" do
    assert_difference('MetaItem.count') do
      post :create, meta_item: @meta_item.attributes
    end

    assert_redirected_to meta_item_path(assigns(:meta_item))
  end

  test "should show meta_item" do
    get :show, id: @meta_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meta_item
    assert_response :success
  end

  test "should update meta_item" do
    put :update, id: @meta_item, meta_item: @meta_item.attributes
    assert_redirected_to meta_item_path(assigns(:meta_item))
  end

  test "should destroy meta_item" do
    assert_difference('MetaItem.count', -1) do
      delete :destroy, id: @meta_item
    end

    assert_redirected_to meta_items_path
  end
end
