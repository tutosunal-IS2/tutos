class LikesTutorsBySubject < ApplicationRecord
  has_many :schedules
  belongs_to :tutor
  belongs_to :subject
end
