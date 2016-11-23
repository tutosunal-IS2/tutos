json.extract! appointment, :id, :tutor_id, :subject_id, :student_id, :description, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)