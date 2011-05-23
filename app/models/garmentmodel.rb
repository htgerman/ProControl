class Garmentmodel < ActiveRecord::Base
  belongs_to :garmenttype
  has_many :notes, :as => :noteable, :dependent => :destroy

  attr_accessible :name, :shortdescription, :description, :price, :garmenttype_id
  validates :name,  :presence => true
  validates :shortdescription,  :presence => true
  validates :price, :presence => true
  validates :garmenttype_id, :presence => true

  def garmenttype_name
    garmenttype.name if garmenttype
  end

end
