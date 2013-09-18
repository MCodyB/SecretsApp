class TodoList < ActiveRecord::Base
  attr_accessible :title
  
  validates :title, presence: true
  
  has_many :todo_items
end