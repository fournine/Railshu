require 'test_helper'

class TipoIvasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_ivas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_iva" do
    assert_difference('TipoIva.count') do
      post :create, :tipo_iva => { }
    end

    assert_redirected_to tipo_iva_path(assigns(:tipo_iva))
  end

  test "should show tipo_iva" do
    get :show, :id => tipo_ivas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipo_ivas(:one).to_param
    assert_response :success
  end

  test "should update tipo_iva" do
    put :update, :id => tipo_ivas(:one).to_param, :tipo_iva => { }
    assert_redirected_to tipo_iva_path(assigns(:tipo_iva))
  end

  test "should destroy tipo_iva" do
    assert_difference('TipoIva.count', -1) do
      delete :destroy, :id => tipo_ivas(:one).to_param
    end

    assert_redirected_to tipo_ivas_path
  end
end
