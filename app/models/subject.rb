class Subject < ApplicationRecord

    has_many :schedule_tutors_subjects
    has_many :tutors, through: :schedule_tutors_subjects, dependent: :destroy

    def subject_name
      name.try(:name)
    end

    def subject_name=(name)
      #self.subject = Subject.find_or_create_by(name: name) if name.present?
    end

end
