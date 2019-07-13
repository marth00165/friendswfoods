require 'test_helper'

class RestaurantEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_event = restaurant_events(:one)
  end

  test "should get index" do
    get restaurant_events_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_event_url
    assert_response :success
  end

  test "should create restaurant_event" do
    assert_difference('RestaurantEvent.count') do
      post restaurant_events_url, params: { restaurant_event: { amount_of_members: @restaurant_event.amount_of_members, event_id: @restaurant_event.event_id, full: @restaurant_event.full } }
    end

    assert_redirected_to restaurant_event_url(RestaurantEvent.last)
  end

  test "should show restaurant_event" do
    get restaurant_event_url(@restaurant_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_event_url(@restaurant_event)
    assert_response :success
  end

  test "should update restaurant_event" do
    patch restaurant_event_url(@restaurant_event), params: { restaurant_event: { amount_of_members: @restaurant_event.amount_of_members, event_id: @restaurant_event.event_id, full: @restaurant_event.full } }
    assert_redirected_to restaurant_event_url(@restaurant_event)
  end

  test "should destroy restaurant_event" do
    assert_difference('RestaurantEvent.count', -1) do
      delete restaurant_event_url(@restaurant_event)
    end

    assert_redirected_to restaurant_events_url
  end
end
