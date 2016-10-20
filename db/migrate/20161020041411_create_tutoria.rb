class CreateTutoria < ActiveRecord::Migration[5.0]
  def change
    create_table :tutoria do |t|
      t.text :asignatura
      t.text :facultad

      t.timestamps
    end
  end
end
