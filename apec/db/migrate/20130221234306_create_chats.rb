class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :message
       t.timestamps
    end
    
  end
end
