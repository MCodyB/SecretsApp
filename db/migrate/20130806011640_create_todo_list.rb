class CreateTodoList < ActiveRecord::Migration
  def change
    create_table :todo_list do |t|
      t.timestamps
      t.string :title, :null => false
    end
  end
end
