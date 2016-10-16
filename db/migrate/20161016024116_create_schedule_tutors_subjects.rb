class CreateScheduleTutorsSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_tutors_subjects do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.string :color

      t.references :subject, foreign_key: true
      t.references :tutor, foreign_key: true

      t.timestamps
    end
  end
end
