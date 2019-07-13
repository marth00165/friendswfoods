require "application_system_test_case"

class RestaurantEventsTest < ApplicationSystemTestCase
  setup do
    @restaurant_event = restaurant_events(:one)
  end

  test "visiting the index" do
    visit restaurant_events_url
    assert_selector "h1", text: "Restaurant Events"
  end

  test "creating a Restaurant event" do
    visit restaurant_events_url
    click_on "New Restaurant Event"

    fill_in "Amount of members", with: @restaurant_event.amount_of_members
    fill_in "Event", with: @restaurant_event.event_id
    check "Full" if @restaurant_event.full
    click_on "Create Restaurant event"

    assert_text "Restaurant event was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant event" do
    visit restaurant_events_url
    click_on "Edit", match: :first

    fill_in "Amount of members", with: @restaurant_event.amount_of_members
    fill_in "Event", with: @restaurant_event.event_id
    check "Full" if @restaurant_event.full
    click_on "Update Restaurant event"

    assert_text "Restaurant event was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant event" do
    visit restaurant_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant event was successfully destroyed"
  end
end
