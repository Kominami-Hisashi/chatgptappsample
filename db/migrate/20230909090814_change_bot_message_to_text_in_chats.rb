class ChangeBotMessageToTextInChats < ActiveRecord::Migration[7.0]
  def change
    change_column :chats, :bot_message, :text
  end
end
