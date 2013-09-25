class EditYogaclasses < ActiveRecord::Migration
  def change
  	remove_column :yogaclasses, :time
  	remove_column :yogaclasses, :cost
  	remove_column :yogaclasses, :description
  end
end
