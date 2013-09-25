class Review < ActiveRecord::Base
  attr_accessible :post, :yogaclass_id

  belongs_to :yogaclass
end
