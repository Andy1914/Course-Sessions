require 'test_helper'

class HhcodesControllerTest < ActionController::TestCase
  setup do
    @hhcode = hhcodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hhcodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hhcode" do
    assert_difference('Hhcode.count') do
      post :create, hhcode: { creators: @hhcode.creators, doers: @hhcode.doers, helpers: @hhcode.helpers, organizers: @hhcode.organizers, persuaders: @hhcode.persuaders, thinkers: @hhcode.thinkers }
    end

    assert_redirected_to hhcode_path(assigns(:hhcode))
  end

  test "should show hhcode" do
    get :show, id: @hhcode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hhcode
    assert_response :success
  end

  test "should update hhcode" do
    put :update, id: @hhcode, hhcode: { creators: @hhcode.creators, doers: @hhcode.doers, helpers: @hhcode.helpers, organizers: @hhcode.organizers, persuaders: @hhcode.persuaders, thinkers: @hhcode.thinkers }
    assert_redirected_to hhcode_path(assigns(:hhcode))
  end

  test "should destroy hhcode" do
    assert_difference('Hhcode.count', -1) do
      delete :destroy, id: @hhcode
    end

    assert_redirected_to hhcodes_path
  end
end
