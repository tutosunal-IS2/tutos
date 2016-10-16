require 'test_helper'

class LikesTutorsBySubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @likes_tutors_by_subject = likes_tutors_by_subjects(:one)
  end

  test "should get index" do
    get likes_tutors_by_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_likes_tutors_by_subject_url
    assert_response :success
  end

  test "should create likes_tutors_by_subject" do
    assert_difference('LikesTutorsBySubject.count') do
      post likes_tutors_by_subjects_url, params: { likes_tutors_by_subject: { subject_id: @likes_tutors_by_subject.subject_id, tutor_id: @likes_tutors_by_subject.tutor_id } }
    end

    assert_redirected_to likes_tutors_by_subject_url(LikesTutorsBySubject.last)
  end

  test "should show likes_tutors_by_subject" do
    get likes_tutors_by_subject_url(@likes_tutors_by_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_likes_tutors_by_subject_url(@likes_tutors_by_subject)
    assert_response :success
  end

  test "should update likes_tutors_by_subject" do
    patch likes_tutors_by_subject_url(@likes_tutors_by_subject), params: { likes_tutors_by_subject: { subject_id: @likes_tutors_by_subject.subject_id, tutor_id: @likes_tutors_by_subject.tutor_id } }
    assert_redirected_to likes_tutors_by_subject_url(@likes_tutors_by_subject)
  end

  test "should destroy likes_tutors_by_subject" do
    assert_difference('LikesTutorsBySubject.count', -1) do
      delete likes_tutors_by_subject_url(@likes_tutors_by_subject)
    end

    assert_redirected_to likes_tutors_by_subjects_url
  end
end
