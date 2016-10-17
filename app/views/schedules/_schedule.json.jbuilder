json.extract! schedule, :id, :title, :start, :end, :color, :likes_tutors_by_subject_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)