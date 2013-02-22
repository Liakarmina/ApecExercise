class User < ActiveRecord::Base
	has_many :friend_lists
	has_many :chats
end
