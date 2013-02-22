class RemoveUserIdToChat < ActiveRecord::Migration
  def up
    remove_column :chats, :user_id
      end

  def down
    add_column :chats, :user_id, :integer
  end
end
