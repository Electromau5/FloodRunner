require 'test_helper'

class Supply2sControllerTest < ActionController::TestCase
  setup do
    @supply2 = supply2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supply2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supply2" do
    assert_difference('Supply2.count') do
      post :create, supply2: { contact: @supply2.contact, info: @supply2.info, location: @supply2.location, material: @supply2.material }
    end

    assert_redirected_to supply2_path(assigns(:supply2))
  end

  test "should show supply2" do
    get :show, id: @supply2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supply2
    assert_response :success
  end

  test "should update supply2" do
    patch :update, id: @supply2, supply2: { contact: @supply2.contact, info: @supply2.info, location: @supply2.location, material: @supply2.material }
    assert_redirected_to supply2_path(assigns(:supply2))
  end

  test "should destroy supply2" do
    assert_difference('Supply2.count', -1) do
      delete :destroy, id: @supply2
    end

    assert_redirected_to supply2s_path
  end
end
