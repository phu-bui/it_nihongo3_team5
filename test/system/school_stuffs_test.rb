require "application_system_test_case"

class SchoolStuffsTest < ApplicationSystemTestCase
  setup do
    @school_stuff = school_stuffs(:one)
  end

  test "visiting the index" do
    visit school_stuffs_url
    assert_selector "h1", text: "School Stuffs"
  end

  test "creating a School stuff" do
    visit school_stuffs_url
    click_on "New School Stuff"

    fill_in "Name", with: @school_stuff.name
    fill_in "Price", with: @school_stuff.price
    fill_in "Publisher", with: @school_stuff.publisher
    click_on "Create School stuff"

    assert_text "School stuff was successfully created"
    click_on "Back"
  end

  test "updating a School stuff" do
    visit school_stuffs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @school_stuff.name
    fill_in "Price", with: @school_stuff.price
    fill_in "Publisher", with: @school_stuff.publisher
    click_on "Update School stuff"

    assert_text "School stuff was successfully updated"
    click_on "Back"
  end

  test "destroying a School stuff" do
    visit school_stuffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School stuff was successfully destroyed"
  end
end
