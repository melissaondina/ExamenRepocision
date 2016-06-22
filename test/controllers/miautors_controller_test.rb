require 'test_helper'

class MiautorsControllerTest < ActionController::TestCase
  setup do
    @miautor = miautors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miautors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miautor" do
    assert_difference('Miautor.count') do
      post :create, miautor: { idautor: @miautor.idautor, nombre: @miautor.nombre }
    end

    assert_redirected_to miautor_path(assigns(:miautor))
  end

  test "should show miautor" do
    get :show, id: @miautor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miautor
    assert_response :success
  end

  test "should update miautor" do
    patch :update, id: @miautor, miautor: { idautor: @miautor.idautor, nombre: @miautor.nombre }
    assert_redirected_to miautor_path(assigns(:miautor))
  end

  test "should destroy miautor" do
    assert_difference('Miautor.count', -1) do
      delete :destroy, id: @miautor
    end

    assert_redirected_to miautors_path
  end
end
