class AddLikesTutorsBySubjectRefToArchivo < ActiveRecord::Migration[5.0]
  def change
    add_reference :archivos, :likes_tutors_by_subject, foreign_key: true
  end
end
