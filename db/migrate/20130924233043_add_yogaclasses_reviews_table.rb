class AddYogaclassesReviewsTable < ActiveRecord::Migration
  def change
  	create_table :studios_yogaclasses, :id => false do |t|
  		t.integer :studio_id
  		t.integer :yogaclass_id
  	end
  end
end
