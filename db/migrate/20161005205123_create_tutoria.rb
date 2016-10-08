class CreateTutoria < ActiveRecord::Migration[5.0]
  def change
    create_table :tutoria do |t|
      t.string :asignatura
      t.string :facultad

      t.timestamps
    end
  end
end
