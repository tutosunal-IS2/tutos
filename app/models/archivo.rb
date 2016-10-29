class Archivo < ActiveRecord::Base
	mount_uploader :file, ArchivoUploader
end
