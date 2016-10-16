class CreateLikesTutorsBySubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :likes_tutors_by_subjects do |t|
      t.references :tutor, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
