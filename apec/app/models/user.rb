class User < ActiveRecord::Base
	has_many :friend_lists
	
end
