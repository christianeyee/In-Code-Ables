class Research < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	has_and_belongs_to_many :categories
end
