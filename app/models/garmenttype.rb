class Garmenttype < ActiveRecord::Base
  has_many :garmentmodels
  attr_accessible :name, :description
  validates :name, :presence => true

  scope :ingarmentmodels, joins(:garmentmodels).group("garmenttypes.name").order("garmenttypes.name")
end
