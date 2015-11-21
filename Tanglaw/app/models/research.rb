class Research < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	has_and_belongs_to_many :categories

	# NOT NEEDED
	has_many :active_continuations, class_name: "Continuation",
                                  foreign_key: "follower_id",
                                  dependent: :destroy
 	has_many :following, through: :active_continuations, source: :followed
 	###

 	has_many :passive_continuations, class_name: "Continuation",
                                     foreign_key: "followed_id",
                                     dependent: :destroy
 	has_many :followers, through: :passive_continuations, source: :follower


	def continue(continuation)
		passive_continuations.create(followed_id: id, follower_id: continuation.id)
	end
end
