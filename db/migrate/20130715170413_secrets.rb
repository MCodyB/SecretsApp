class Secrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :title, :null => false
      t.integer :author_id, :null => false
      t.integer :recipient_id, :null => false
      
      t.timestamps
    end
  end
end
