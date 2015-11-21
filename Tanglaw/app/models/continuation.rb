class Continuation < ActiveRecord::Base
	belongs_to :follower, class_name: "Research"
	belongs_to :followed, class_name: "Research"

	validates :follower_id, presence: true
	validates :followed_id, presence: true
end
