class AddNeighbourhoodToStudios < ActiveRecord::Migration
  def change
  	add_column :addresses, :neighbourhood, :string
  end
end
