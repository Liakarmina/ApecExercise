class CreateFriendLists < ActiveRecord::Migration
  def change
    create_table :friend_lists do |t|
      t.string :Idfriend
      t.references :user

      t.timestamps
    end
    add_index :friend_lists, :user_id
  end
end
