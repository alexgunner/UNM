require 'test_helper'

class InfoTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_text = info_texts(:one)
  end

  test "should get index" do
    get info_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_info_text_url
    assert_response :success
  end

  test "should create info_text" do
    assert_difference('InfoText.count') do
      post info_texts_url, params: { info_text: { content: @info_text.content, title: @info_text.title } }
    end

    assert_redirected_to info_text_url(InfoText.last)
  end

  test "should show info_text" do
    get info_text_url(@info_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_text_url(@info_text)
    assert_response :success
  end

  test "should update info_text" do
    patch info_text_url(@info_text), params: { info_text: { content: @info_text.content, title: @info_text.title } }
    assert_redirected_to info_text_url(@info_text)
  end

  test "should destroy info_text" do
    assert_difference('InfoText.count', -1) do
      delete info_text_url(@info_text)
    end

    assert_redirected_to info_texts_url
  end
end
