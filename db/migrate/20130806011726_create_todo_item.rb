class CreateTodoItem < ActiveRecord::Migration
  def change
    create_table :todo_item do |t|
      t.timestamps
      t.string :item, :null => false
      t.integer :todo_list_id, :null => false
    end
  end
end
