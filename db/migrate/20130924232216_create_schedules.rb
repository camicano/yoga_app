class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    t.integer :user_id
    t.string :mon
    t.string :tue
    t.string :wed
    t.string :thu
    t.string :fri
    t.string :sat
    t.string :sun
    t.string :address 
    t.string :name 
    t.integer :range 
    t.float :latitude 
    t.float :longitud
      t.timestamps
    end
  end
end
