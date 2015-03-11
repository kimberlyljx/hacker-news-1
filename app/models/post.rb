class Post < ActiveRecord::Base
	has_many :post_votes
	has_many :comments
	belongs_to :user
  # Remember to create a migration!
end
