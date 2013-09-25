class EditCost < ActiveRecord::Migration
  def change
  	remove_column :yogaclasses, :cost
  end
end
