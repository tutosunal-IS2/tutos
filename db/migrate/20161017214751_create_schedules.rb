class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.string :color
      t.references :likes_tutors_by_subject, foreign_key: true

      t.timestamps
    end
  end
end
