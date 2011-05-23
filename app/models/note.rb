class Note < ActiveRecord::Base
  belongs_to :noteable, :polymorphic => true

  attr_accessible :title, :content, :att, :noteable
  validates :title,  :presence => true

  has_attached_file :att
  

end
