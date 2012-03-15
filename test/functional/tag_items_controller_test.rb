require 'test_helper'

class TagItemsControllerTest < ActionController::TestCase
  setup do
    @tag_item = tag_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_item" do
    assert_difference('TagItem.count') do
      post :create, tag_item: @tag_item.attributes
    end

    assert_redirected_to tag_item_path(assigns(:tag_item))
  end

  test "should show tag_item" do
    get :show, id: @tag_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_item
    assert_response :success
  end

  test "should update tag_item" do
    put :update, id: @tag_item, tag_item: @tag_item.attributes
    assert_redirected_to tag_item_path(assigns(:tag_item))
  end

  test "should destroy tag_item" do
    assert_difference('TagItem.count', -1) do
      delete :destroy, id: @tag_item
    end

    assert_redirected_to tag_items_path
  end
end
