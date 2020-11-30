require "application_system_test_case"

class SchoolReviewsTest < ApplicationSystemTestCase
  setup do
    @school_review = school_reviews(:one)
  end

  test "visiting the index" do
    visit school_reviews_url
    assert_selector "h1", text: "School Reviews"
  end

  test "creating a School review" do
    visit school_reviews_url
    click_on "New School Review"

    fill_in "Review", with: @school_review.review
    fill_in "School", with: @school_review.school_id
    fill_in "User", with: @school_review.user_id
    click_on "Create School review"

    assert_text "School review was successfully created"
    click_on "Back"
  end

  test "updating a School review" do
    visit school_reviews_url
    click_on "Edit", match: :first

    fill_in "Review", with: @school_review.review
    fill_in "School", with: @school_review.school_id
    fill_in "User", with: @school_review.user_id
    click_on "Update School review"

    assert_text "School review was successfully updated"
    click_on "Back"
  end

  test "destroying a School review" do
    visit school_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "School review was successfully destroyed"
  end
end
