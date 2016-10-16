class AddColumnsToTutors < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :name, :string
    add_column :tutors, :description, :text
  end
end
