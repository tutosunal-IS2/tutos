json.extract! likes_tutors_by_subject, :id, :tutor_id, :subject_id, :created_at, :updated_at
json.url likes_tutors_by_subject_url(likes_tutors_by_subject, format: :json)