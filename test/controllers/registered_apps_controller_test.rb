require 'test_helper'

class RegisteredAppsControllerTest < ActionController::TestCase
  setup do
    @registered_app = registered_apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registered_apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registered_app" do
    assert_difference('RegisteredApp.count') do
      post :create, registered_app: { name: @registered_app.name, widget: @registered_app.widget, widget_endpoint: @registered_app.widget_endpoint }
    end

    assert_redirected_to registered_app_path(assigns(:registered_app))
  end

  test "should show registered_app" do
    get :show, id: @registered_app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registered_app
    assert_response :success
  end

  test "should update registered_app" do
    patch :update, id: @registered_app, registered_app: { name: @registered_app.name, widget: @registered_app.widget, widget_endpoint: @registered_app.widget_endpoint }
    assert_redirected_to registered_app_path(assigns(:registered_app))
  end

  test "should destroy registered_app" do
    assert_difference('RegisteredApp.count', -1) do
      delete :destroy, id: @registered_app
    end

    assert_redirected_to registered_apps_path
  end
end
