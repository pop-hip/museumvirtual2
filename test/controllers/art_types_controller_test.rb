require 'test_helper'

class ArtTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @art_type = art_types(:one)
  end

  test "should get index" do
    get art_types_url
    assert_response :success
  end

  test "should get new" do
    get new_art_type_url
    assert_response :success
  end

  test "should create art_type" do
    assert_difference('ArtType.count') do
      post art_types_url, params: { art_type: { author: @art_type.author, date: @art_type.date, dimention: @art_type.dimention, interpreter: @art_type.interpreter, title: @art_type.title } }
    end

    assert_redirected_to art_type_url(ArtType.last)
  end

  test "should show art_type" do
    get art_type_url(@art_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_art_type_url(@art_type)
    assert_response :success
  end

  test "should update art_type" do
    patch art_type_url(@art_type), params: { art_type: { author: @art_type.author, date: @art_type.date, dimention: @art_type.dimention, interpreter: @art_type.interpreter, title: @art_type.title } }
    assert_redirected_to art_type_url(@art_type)
  end

  test "should destroy art_type" do
    assert_difference('ArtType.count', -1) do
      delete art_type_url(@art_type)
    end

    assert_redirected_to art_types_url
  end
end
