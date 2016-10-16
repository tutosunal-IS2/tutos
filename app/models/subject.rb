class Subject < ApplicationRecord

    has_many :likes_tutors_by_subjects
    has_many :tutors, through: :likes_tutors_by_subjects, dependent: :destroy

    def subject_name
      name.try(:name)
    end

    def subject_name=(name)
      #self.subject = Subject.find_or_create_by(name: name) if name.present?
    end

end
