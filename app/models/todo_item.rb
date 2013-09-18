class TodoItem < ActiveRecord::Base
  attr_accessible :item, :todo_list_id
  
  validates :item, :todo_list_id, presence: true
  
  belongs_to :todo_list
end