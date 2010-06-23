require 'test_helper'

class ItemMenusControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_menu" do
    assert_difference('ItemMenu.count') do
      post :create, :item_menu => { }
    end

    assert_redirected_to item_menu_path(assigns(:item_menu))
  end

  test "should show item_menu" do
    get :show, :id => item_menus(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => item_menus(:one).to_param
    assert_response :success
  end

  test "should update item_menu" do
    put :update, :id => item_menus(:one).to_param, :item_menu => { }
    assert_redirected_to item_menu_path(assigns(:item_menu))
  end

  test "should destroy item_menu" do
    assert_difference('ItemMenu.count', -1) do
      delete :destroy, :id => item_menus(:one).to_param
    end

    assert_redirected_to item_menus_path
  end
end
