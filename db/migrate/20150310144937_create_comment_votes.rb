class CreateCommentVotes < ActiveRecord::Migration
  def change
  	create_table :comment_votes do |c|
  		c.belongs_to :user, index: true
  		c.belongs_to :comment, index: true
  	end
  end
end
