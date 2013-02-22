class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :message
      t.references :user

      t.timestamps
    end
    add_index :chats, :user_id
  end
end
