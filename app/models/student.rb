class Student < ApplicationRecord
	devise :omniauthable, omniauth_providers: [:google_oauth2]


	def self.from_omniauth(auth)
  		where(provider: auth.provider, uid: auth.uid).first_or_create do |student|
    	student.name = auth.info.name
    	student.email = auth.info.email
    	student.image_url = auth.info.image

  		end
	end
end
