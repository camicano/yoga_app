class Address < ActiveRecord::Base
  attr_accessible :name, :address, :neighbourhood, :description, :longitude, :latitude, :studio_id

  belongs_to :studio
  geocoded_by :address
  after_validation :geocode
end
