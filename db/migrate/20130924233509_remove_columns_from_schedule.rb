class RemoveColumnsFromSchedule < ActiveRecord::Migration
  def change
  	remove_column :schedules, :latitude
  	remove_column :schedules, :longitud
  	remove_column :schedules, :range
  	remove_column :schedules, :address
  	remove_column :schedules, :name
  	add_column :schedules, :neighbourhood, :string
  end
end
