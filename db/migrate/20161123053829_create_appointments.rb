class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :tutor, foreign_key: true
      t.references :subject, foreign_key: true
      t.references :student, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
