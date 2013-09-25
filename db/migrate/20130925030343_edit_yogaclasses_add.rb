class EditYogaclassesAdd < ActiveRecord::Migration
  def change
  	add_column :yogaclasses, :time, :integer
  	add_column :yogaclasses, :cost, :integer
  end
end
