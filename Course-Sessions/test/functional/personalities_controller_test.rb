require 'test_helper'

class PersonalitiesControllerTest < ActionController::TestCase
  setup do
    @personality = personalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personality" do
    assert_difference('Personality.count') do
      post :create, personality: { creators: @personality.creators, doers: @personality.doers, helpers: @personality.helpers, organizers: @personality.organizers, persuaders: @personality.persuaders, thinkers: @personality.thinkers }
    end

    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should show personality" do
    get :show, id: @personality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personality
    assert_response :success
  end

  test "should update personality" do
    put :update, id: @personality, personality: { creators: @personality.creators, doers: @personality.doers, helpers: @personality.helpers, organizers: @personality.organizers, persuaders: @personality.persuaders, thinkers: @personality.thinkers }
    assert_redirected_to personality_path(assigns(:personality))
  end

  test "should destroy personality" do
    assert_difference('Personality.count', -1) do
      delete :destroy, id: @personality
    end

    assert_redirected_to personalities_path
  end
end
