class Secret < ActiveRecord::Base
  attr_accessible :title, :author_id, :recipient_id
  
  belongs_to :author, :class_name => "User"
  belongs_to :recipient, :class_name => "User"
  
  validates :title, :author_id, :recipient_id, :presence => true
end