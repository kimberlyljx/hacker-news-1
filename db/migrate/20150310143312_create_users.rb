class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |c|
  		c.string :username, unique: true
  		c.string :password
  	end
  end
end

