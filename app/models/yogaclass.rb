class Yogaclass < ActiveRecord::Base
 attr_accessible :cost, :day, :description, :time, :studio_id
  
  belongs_to :studio
  has_and_belongs_to_many :users
  has_many :reviews
 end
