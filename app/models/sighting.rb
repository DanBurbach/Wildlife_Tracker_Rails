class Sighting < ActiveRecord::Base
  belongs_to :list

  validates :date_seen, :presence => true
end
