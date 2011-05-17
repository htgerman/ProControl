require 'test_helper'

class ClientsourcesControllerTest < ActionController::TestCase
  setup do
    @clientsource = clientsources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientsources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientsource" do
    assert_difference('Clientsource.count') do
      post :create, :clientsource => @clientsource.attributes
    end

    assert_redirected_to clientsource_path(assigns(:clientsource))
  end

  test "should show clientsource" do
    get :show, :id => @clientsource.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clientsource.to_param
    assert_response :success
  end

  test "should update clientsource" do
    put :update, :id => @clientsource.to_param, :clientsource => @clientsource.attributes
    assert_redirected_to clientsource_path(assigns(:clientsource))
  end

  test "should destroy clientsource" do
    assert_difference('Clientsource.count', -1) do
      delete :destroy, :id => @clientsource.to_param
    end

    assert_redirected_to clientsources_path
  end
end
