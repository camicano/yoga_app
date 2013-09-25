class CreateYogaclasses < ActiveRecord::Migration
  def change
    create_table :yogaclasses do |t|
 	  t.float :time
      t.string :day
      t.float :cost
      t.string :description
      t.integer :studio_id
      t.timestamps
    end
  end
end
