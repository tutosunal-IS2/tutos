class LikesTutorsBySubject < ApplicationRecord
  has_many :schedules
  has_many :archivos
  belongs_to :tutor
  belongs_to :subject
end
