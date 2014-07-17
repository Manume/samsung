class Carrier < ActiveRecord::Base
	mount_uploader :resume,ResumeUploader
	mount_uploader :photo,PhotoUploader
end
