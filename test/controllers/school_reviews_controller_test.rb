require 'test_helper'

class SchoolReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_review = school_reviews(:one)
  end

  test "should get index" do
    get school_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_school_review_url
    assert_response :success
  end

  test "should create school_review" do
    assert_difference('SchoolReview.count') do
      post school_reviews_url, params: { school_review: { review: @school_review.review, school_id: @school_review.school_id, user_id: @school_review.user_id } }
    end

    assert_redirected_to school_review_url(SchoolReview.last)
  end

  test "should show school_review" do
    get school_review_url(@school_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_review_url(@school_review)
    assert_response :success
  end

  test "should update school_review" do
    patch school_review_url(@school_review), params: { school_review: { review: @school_review.review, school_id: @school_review.school_id, user_id: @school_review.user_id } }
    assert_redirected_to school_review_url(@school_review)
  end

  test "should destroy school_review" do
    assert_difference('SchoolReview.count', -1) do
      delete school_review_url(@school_review)
    end

    assert_redirected_to school_reviews_url
  end
end
