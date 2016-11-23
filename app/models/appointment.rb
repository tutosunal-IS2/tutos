class Appointment < ApplicationRecord
  belongs_to :tutor
  belongs_to :subject
  belongs_to :student
end
