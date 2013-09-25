class Add2StudioToAddresses < ActiveRecord::Migration
  def change
  	add_column :addresses, :studio_id, :integer
  end
end
