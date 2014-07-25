class Carrier < ActiveRecord::Base
	mount_uploader :resume,ResumeUploader
	mount_uploader :photo,PhotoUploader
	validates :first_name,:last_name,:city,:country,:email,:resume,:photo,presence: true
	validates_format_of :phone, 
                    :with => /\A[0-9]{10}\Z/, 
                    :allow_blank => true, 
                    :allow_nil => true
end
