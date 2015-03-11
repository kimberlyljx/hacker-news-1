class User < ActiveRecord::Base
	validates :username, uniqueness: true
	has_many :posts
	has_many :comments
	has_many :post_votes
	has_many :comment_votes
  # Remember to create a migration!
   def self.authenticate(passed_in_username, passed_in_password)
    @user = User.where(username: passed_in_username).first
    if @user && @user.password == passed_in_password
      @user
    else
      nil
    end
  end
end
