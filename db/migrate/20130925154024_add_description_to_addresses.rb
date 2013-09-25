class AddDescriptionToAddresses < ActiveRecord::Migration
  def change
  	add_column :addresses, :description, :text
  end
end
