require 'test_helper'

class TagUserdreamsControllerTest < ActionController::TestCase
  setup do
    @tag_userdream = tag_userdreams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_userdreams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_userdream" do
    assert_difference('TagUserdream.count') do
      post :create, tag_userdream: @tag_userdream.attributes
    end

    assert_redirected_to tag_userdream_path(assigns(:tag_userdream))
  end

  test "should show tag_userdream" do
    get :show, id: @tag_userdream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_userdream
    assert_response :success
  end

  test "should update tag_userdream" do
    put :update, id: @tag_userdream, tag_userdream: @tag_userdream.attributes
    assert_redirected_to tag_userdream_path(assigns(:tag_userdream))
  end

  test "should destroy tag_userdream" do
    assert_difference('TagUserdream.count', -1) do
      delete :destroy, id: @tag_userdream
    end

    assert_redirected_to tag_userdreams_path
  end
end
