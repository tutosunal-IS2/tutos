class Subject < ApplicationRecord
    def subject_name
      name.try(:name)
    end

    def subject_name=(name)
      #self.subject = Subject.find_or_create_by(name: name) if name.present?
    end

end
