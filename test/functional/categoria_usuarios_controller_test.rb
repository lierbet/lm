require 'test_helper'

class CategoriaUsuariosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_usuario" do
    assert_difference('CategoriaUsuario.count') do
      post :create, :categoria_usuario => { }
    end

    assert_redirected_to categoria_usuario_path(assigns(:categoria_usuario))
  end

  test "should show categoria_usuario" do
    get :show, :id => categoria_usuarios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => categoria_usuarios(:one).to_param
    assert_response :success
  end

  test "should update categoria_usuario" do
    put :update, :id => categoria_usuarios(:one).to_param, :categoria_usuario => { }
    assert_redirected_to categoria_usuario_path(assigns(:categoria_usuario))
  end

  test "should destroy categoria_usuario" do
    assert_difference('CategoriaUsuario.count', -1) do
      delete :destroy, :id => categoria_usuarios(:one).to_param
    end

    assert_redirected_to categoria_usuarios_path
  end
end
