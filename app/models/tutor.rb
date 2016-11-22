class Tutor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+(@gmail|@yahoo|@hotmail)\.com\z/,
                  message: "must be a valid email" }
  mount_uploader :avatar, AvatarUploader
  has_many :likes_tutors_by_subjects
  has_many :subjects, through: :likes_tutors_by_subjects, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
                   :confirmable, :lockable, :timeoutable

end
