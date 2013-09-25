class AddUsersStudiosTable < ActiveRecord::Migration
  def change
  	create_table :studios_users, :id => false do |t|
  		t.integer :studio_id
  		t.integer :user_id
  	end
  end
end
