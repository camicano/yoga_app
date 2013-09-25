class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :yogaclass_id
      t.string :post
      t.timestamps
    end
  end
end
