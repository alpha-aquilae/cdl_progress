class Section < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :content_type
  validates_presence_of :content
  belongs_to :page
  has_many :section_edits
  has_many :editors, :through => :section_edits, :class_name => "AdminUser"
  
end
