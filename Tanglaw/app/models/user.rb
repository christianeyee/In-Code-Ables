class User < ActiveRecord::Base
	has_many :researches, dependent: :destroy
	def name
		return f_name + " " + l_name
	end
end
