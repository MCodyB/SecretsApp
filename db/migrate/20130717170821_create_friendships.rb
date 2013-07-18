class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.timestamps
      t.integer :user_id, :null => false
      t.integer :friend_id, :null => false
    end
  end
end
