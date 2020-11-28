require 'test_helper'

class SchoolStuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_stuff = school_stuffs(:one)
  end

  test "should get index" do
    get school_stuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_school_stuff_url
    assert_response :success
  end

  test "should create school_stuff" do
    assert_difference('SchoolStuff.count') do
      post school_stuffs_url, params: { school_stuff: { name: @school_stuff.name, price: @school_stuff.price, publisher: @school_stuff.publisher } }
    end

    assert_redirected_to school_stuff_url(SchoolStuff.last)
  end

  test "should show school_stuff" do
    get school_stuff_url(@school_stuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_stuff_url(@school_stuff)
    assert_response :success
  end

  test "should update school_stuff" do
    patch school_stuff_url(@school_stuff), params: { school_stuff: { name: @school_stuff.name, price: @school_stuff.price, publisher: @school_stuff.publisher } }
    assert_redirected_to school_stuff_url(@school_stuff)
  end

  test "should destroy school_stuff" do
    assert_difference('SchoolStuff.count', -1) do
      delete school_stuff_url(@school_stuff)
    end

    assert_redirected_to school_stuffs_url
  end
end
