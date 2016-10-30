class AddAvatarToTutor < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :avatar, :text
  end
end
