class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.string :user_message
      t.string :bot_message

      t.timestamps
    end
  end
end
