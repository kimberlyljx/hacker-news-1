class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |c|
  		c.belongs_to :user, index: true
  		c.belongs_to :post, index: true
  		c.string :body
  		c.timestamps null: false
  	end
  end
end
