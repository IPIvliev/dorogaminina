require 'test_helper'

class ZvenosControllerTest < ActionController::TestCase
  setup do
    @zveno = zvenos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zvenos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zveno" do
    assert_difference('Zveno.count') do
      post :create, zveno: { free: @zveno.free, number: @zveno.number, occupy: @zveno.occupy, user_id: @zveno.user_id }
    end

    assert_redirected_to zveno_path(assigns(:zveno))
  end

  test "should show zveno" do
    get :show, id: @zveno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zveno
    assert_response :success
  end

  test "should update zveno" do
    put :update, id: @zveno, zveno: { free: @zveno.free, number: @zveno.number, occupy: @zveno.occupy, user_id: @zveno.user_id }
    assert_redirected_to zveno_path(assigns(:zveno))
  end

  test "should destroy zveno" do
    assert_difference('Zveno.count', -1) do
      delete :destroy, id: @zveno
    end

    assert_redirected_to zvenos_path
  end
end
