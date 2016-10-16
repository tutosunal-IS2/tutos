class ScheduleTutorsSubjects < ApplicationRecord
  belongs_to :subject
  belongs_to :tutor
end
