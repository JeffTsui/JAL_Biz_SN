require 'test_helper'

class PassengersControllerTest < ActionController::TestCase
  setup do
    @passenger = passengers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:passengers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create passenger" do
    assert_difference('Passenger.count') do
      post :create, passenger: { avatar: @passenger.avatar, comments: @passenger.comments, fb: @passenger.fb, flight: @passenger.flight, from: @passenger.from, hobby: @passenger.hobby, linkedin: @passenger.linkedin, name: @passenger.name, seat: @passenger.seat, source: @passenger.source, type: @passenger.type, work: @passenger.work }
    end

    assert_redirected_to passenger_path(assigns(:passenger))
  end

  test "should show passenger" do
    get :show, id: @passenger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @passenger
    assert_response :success
  end

  test "should update passenger" do
    patch :update, id: @passenger, passenger: { avatar: @passenger.avatar, comments: @passenger.comments, fb: @passenger.fb, flight: @passenger.flight, from: @passenger.from, hobby: @passenger.hobby, linkedin: @passenger.linkedin, name: @passenger.name, seat: @passenger.seat, source: @passenger.source, type: @passenger.type, work: @passenger.work }
    assert_redirected_to passenger_path(assigns(:passenger))
  end

  test "should destroy passenger" do
    assert_difference('Passenger.count', -1) do
      delete :destroy, id: @passenger
    end

    assert_redirected_to passengers_path
  end
end
