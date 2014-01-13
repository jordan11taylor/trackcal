require 'test_helper'

class TrackdaysControllerTest < ActionController::TestCase
  setup do
    @trackday = trackdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trackday" do
    assert_difference('Trackday.count') do
      post :create, trackday: { date: @trackday.date, organization: @trackday.organization, price: @trackday.price, session_type: @trackday.session_type, track: @trackday.track }
    end

    assert_redirected_to trackday_path(assigns(:trackday))
  end

  test "should show trackday" do
    get :show, id: @trackday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trackday
    assert_response :success
  end

  test "should update trackday" do
    patch :update, id: @trackday, trackday: { date: @trackday.date, organization: @trackday.organization, price: @trackday.price, session_type: @trackday.session_type, track: @trackday.track }
    assert_redirected_to trackday_path(assigns(:trackday))
  end

  test "should destroy trackday" do
    assert_difference('Trackday.count', -1) do
      delete :destroy, id: @trackday
    end

    assert_redirected_to trackdays_path
  end
end
