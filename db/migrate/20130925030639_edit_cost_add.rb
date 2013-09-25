class EditCostAdd < ActiveRecord::Migration
  def change
  	add_column :yogaclasses, :cost, :string
  end
end
