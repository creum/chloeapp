require 'test_helper'

class ChloesControllerTest < ActionController::TestCase
  setup do
    @chlo = chloes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chloes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chlo" do
    assert_difference('Chloe.count') do
      post :create, chlo: { name: @chlo.name }
    end

    assert_redirected_to chlo_path(assigns(:chlo))
  end

  test "should show chlo" do
    get :show, id: @chlo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chlo
    assert_response :success
  end

  test "should update chlo" do
    patch :update, id: @chlo, chlo: { name: @chlo.name }
    assert_redirected_to chlo_path(assigns(:chlo))
  end

  test "should destroy chlo" do
    assert_difference('Chloe.count', -1) do
      delete :destroy, id: @chlo
    end

    assert_redirected_to chloes_path
  end
end
