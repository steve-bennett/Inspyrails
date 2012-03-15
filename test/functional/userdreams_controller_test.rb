require 'test_helper'

class UserdreamsControllerTest < ActionController::TestCase
  setup do
    @userdream = userdreams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userdreams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userdream" do
    assert_difference('Userdream.count') do
      post :create, userdream: @userdream.attributes
    end

    assert_redirected_to userdream_path(assigns(:userdream))
  end

  test "should show userdream" do
    get :show, id: @userdream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userdream
    assert_response :success
  end

  test "should update userdream" do
    put :update, id: @userdream, userdream: @userdream.attributes
    assert_redirected_to userdream_path(assigns(:userdream))
  end

  test "should destroy userdream" do
    assert_difference('Userdream.count', -1) do
      delete :destroy, id: @userdream
    end

    assert_redirected_to userdreams_path
  end
end
