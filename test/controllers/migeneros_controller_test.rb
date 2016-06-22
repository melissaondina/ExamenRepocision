require 'test_helper'

class MigenerosControllerTest < ActionController::TestCase
  setup do
    @migenero = migeneros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:migeneros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create migenero" do
    assert_difference('Migenero.count') do
      post :create, migenero: { genero: @migenero.genero, idgenero: @migenero.idgenero }
    end

    assert_redirected_to migenero_path(assigns(:migenero))
  end

  test "should show migenero" do
    get :show, id: @migenero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @migenero
    assert_response :success
  end

  test "should update migenero" do
    patch :update, id: @migenero, migenero: { genero: @migenero.genero, idgenero: @migenero.idgenero }
    assert_redirected_to migenero_path(assigns(:migenero))
  end

  test "should destroy migenero" do
    assert_difference('Migenero.count', -1) do
      delete :destroy, id: @migenero
    end

    assert_redirected_to migeneros_path
  end
end
