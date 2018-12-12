class List < ActiveRecord::Base
  has_many :sightings
  validates :name, :presence => true
end
