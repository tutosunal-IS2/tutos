class Archivo < ActiveRecord::Base
	mount_uploader :file, ArchivoUploader
	validate :file_size_validation
	def file_size_validation
      errors[:file] << "Should be less than 2MB" if file.size > 2.megabytes
    end
end
