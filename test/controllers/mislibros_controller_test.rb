require 'test_helper'

class MislibrosControllerTest < ActionController::TestCase
  setup do
    @mislibro = mislibros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mislibros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mislibro" do
    assert_difference('Mislibro.count') do
      post :create, mislibro: { descripcion: @mislibro.descripcion, idautor: @mislibro.idautor, idgenero: @mislibro.idgenero, nombre: @mislibro.nombre }
    end

    assert_redirected_to mislibro_path(assigns(:mislibro))
  end

  test "should show mislibro" do
    get :show, id: @mislibro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mislibro
    assert_response :success
  end

  test "should update mislibro" do
    patch :update, id: @mislibro, mislibro: { descripcion: @mislibro.descripcion, idautor: @mislibro.idautor, idgenero: @mislibro.idgenero, nombre: @mislibro.nombre }
    assert_redirected_to mislibro_path(assigns(:mislibro))
  end

  test "should destroy mislibro" do
    assert_difference('Mislibro.count', -1) do
      delete :destroy, id: @mislibro
    end

    assert_redirected_to mislibros_path
  end
end
