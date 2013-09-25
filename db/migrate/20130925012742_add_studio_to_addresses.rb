class AddStudioToAddresses < ActiveRecord::Migration
  def change
  	add_column :addresses, :studio_id, :string
  end
end
