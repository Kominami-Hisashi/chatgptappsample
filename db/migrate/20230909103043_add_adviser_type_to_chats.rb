class AddAdviserTypeToChats < ActiveRecord::Migration[7.0]
  def change
    add_column :chats, :adviser_type, :string
  end
end
