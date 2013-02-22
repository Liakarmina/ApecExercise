class AddNameToChat < ActiveRecord::Migration
  def change
    add_column :chats, :name, :string

  end

    def self.down
    remove_column :chats, :name
  end
end
