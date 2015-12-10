require 'test_helper'

class MedcampsControllerTest < ActionController::TestCase
  setup do
    @medcamp = medcamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medcamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medcamp" do
    assert_difference('Medcamp.count') do
      post :create, medcamp: { contact: @medcamp.contact, date: @medcamp.date, info: @medcamp.info, location: @medcamp.location, organiser: @medcamp.organiser }
    end

    assert_redirected_to medcamp_path(assigns(:medcamp))
  end

  test "should show medcamp" do
    get :show, id: @medcamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medcamp
    assert_response :success
  end

  test "should update medcamp" do
    patch :update, id: @medcamp, medcamp: { contact: @medcamp.contact, date: @medcamp.date, info: @medcamp.info, location: @medcamp.location, organiser: @medcamp.organiser }
    assert_redirected_to medcamp_path(assigns(:medcamp))
  end

  test "should destroy medcamp" do
    assert_difference('Medcamp.count', -1) do
      delete :destroy, id: @medcamp
    end

    assert_redirected_to medcamps_path
  end
end
