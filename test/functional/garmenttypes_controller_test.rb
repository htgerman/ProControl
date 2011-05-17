require 'test_helper'

class GarmenttypesControllerTest < ActionController::TestCase
  setup do
    @garmenttype = garmenttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garmenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garmenttype" do
    assert_difference('Garmenttype.count') do
      post :create, :garmenttype => @garmenttype.attributes
    end

    assert_redirected_to garmenttype_path(assigns(:garmenttype))
  end

  test "should show garmenttype" do
    get :show, :id => @garmenttype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @garmenttype.to_param
    assert_response :success
  end

  test "should update garmenttype" do
    put :update, :id => @garmenttype.to_param, :garmenttype => @garmenttype.attributes
    assert_redirected_to garmenttype_path(assigns(:garmenttype))
  end

  test "should destroy garmenttype" do
    assert_difference('Garmenttype.count', -1) do
      delete :destroy, :id => @garmenttype.to_param
    end

    assert_redirected_to garmenttypes_path
  end
end
