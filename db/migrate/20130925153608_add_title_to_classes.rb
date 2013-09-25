class AddTitleToClasses < ActiveRecord::Migration
  def change
  	add_column :yogaclasses, :title, :string
  	remove_column :addresses, :description
  end
end
