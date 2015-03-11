class CreatePostVotes < ActiveRecord::Migration
  def change
  	create_table :post_votes do |p|
  		p.belongs_to :post, index: true
  		p.belongs_to :user, index: true
  	end
  end
end
