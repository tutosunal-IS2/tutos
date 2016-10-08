require 'test_helper'

class TutoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutorium = tutoria(:one)
  end

  test "should get index" do
    get tutoria_url
    assert_response :success
  end

  test "should get new" do
    get new_tutorium_url
    assert_response :success
  end

  test "should create tutorium" do
    assert_difference('Tutorium.count') do
      post tutoria_url, params: { tutorium: { asignatura: @tutorium.asignatura, facultad: @tutorium.facultad } }
    end

    assert_redirected_to tutorium_url(Tutorium.last)
  end

  test "should show tutorium" do
    get tutorium_url(@tutorium)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutorium_url(@tutorium)
    assert_response :success
  end

  test "should update tutorium" do
    patch tutorium_url(@tutorium), params: { tutorium: { asignatura: @tutorium.asignatura, facultad: @tutorium.facultad } }
    assert_redirected_to tutorium_url(@tutorium)
  end

  test "should destroy tutorium" do
    assert_difference('Tutorium.count', -1) do
      delete tutorium_url(@tutorium)
    end

    assert_redirected_to tutoria_url
  end
end
