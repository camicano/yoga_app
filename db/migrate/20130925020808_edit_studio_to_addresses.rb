class EditStudioToAddresses < ActiveRecord::Migration
  def change
  	remove_column :addresses, :studio_id
  end
end
