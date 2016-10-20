class AddColumnsToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :description, :text
    add_column :subjects, :faculty, :string
    add_column :subjects, :objective, :text
    add_column :subjects, :theme, :text
  end
end
