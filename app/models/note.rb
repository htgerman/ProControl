class Note < ActiveRecord::Base
  belongs_to :noteable, :polymorphic => true

  attr_accessible :title, :content, :att, :noteable
  validates :title,  :presence => true

  has_attached_file :att
  
  def att_is_image
    self.att != nil && self.att.content_type == "image/pjpeg"
  end
end
