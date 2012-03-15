require 'test_helper'

class TagDreamsControllerTest < ActionController::TestCase
  setup do
    @tag_dream = tag_dreams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_dreams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_dream" do
    assert_difference('TagDream.count') do
      post :create, tag_dream: @tag_dream.attributes
    end

    assert_redirected_to tag_dream_path(assigns(:tag_dream))
  end

  test "should show tag_dream" do
    get :show, id: @tag_dream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_dream
    assert_response :success
  end

  test "should update tag_dream" do
    put :update, id: @tag_dream, tag_dream: @tag_dream.attributes
    assert_redirected_to tag_dream_path(assigns(:tag_dream))
  end

  test "should destroy tag_dream" do
    assert_difference('TagDream.count', -1) do
      delete :destroy, id: @tag_dream
    end

    assert_redirected_to tag_dreams_path
  end
end
