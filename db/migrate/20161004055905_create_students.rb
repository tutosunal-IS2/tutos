class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :uid
      t.string :provider
      t.string :name
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
