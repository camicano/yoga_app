class Schedule < ActiveRecord::Base
  attr_accessible :mon, :tue, :wed, :thu, :fri, :sat, :sun, :user_id, 
  :neighbourhood
 
  has_many :studios
  belongs_to :user
end
