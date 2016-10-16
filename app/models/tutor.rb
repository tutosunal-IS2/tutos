class Tutor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :schedule_tutors_subjects
  has_many :subjects, through: :schedule_tutors_subjects, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
                   :confirmable, :lockable, :timeoutable

end
