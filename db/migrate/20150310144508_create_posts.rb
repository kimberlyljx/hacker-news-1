class CreatePosts < ActiveRecord::Migration
  def change
  	create_table :posts do |p|
  		p.string :title, :link
  		p.belongs_to :user, index: true
  		p.timestamps null: false
  	end
  end
end
