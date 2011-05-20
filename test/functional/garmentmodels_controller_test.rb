require 'test_helper'

class GarmentmodelsControllerTest < ActionController::TestCase
  setup do
    @garmentmodel = garmentmodels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garmentmodels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garmentmodel" do
    assert_difference('Garmentmodel.count') do
      post :create, :garmentmodel => @garmentmodel.attributes
    end

    assert_redirected_to garmentmodel_path(assigns(:garmentmodel))
  end

  test "should show garmentmodel" do
    get :show, :id => @garmentmodel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @garmentmodel.to_param
    assert_response :success
  end

  test "should update garmentmodel" do
    put :update, :id => @garmentmodel.to_param, :garmentmodel => @garmentmodel.attributes
    assert_redirected_to garmentmodel_path(assigns(:garmentmodel))
  end

  test "should destroy garmentmodel" do
    assert_difference('Garmentmodel.count', -1) do
      delete :destroy, :id => @garmentmodel.to_param
    end

    assert_redirected_to garmentmodels_path
  end
end
