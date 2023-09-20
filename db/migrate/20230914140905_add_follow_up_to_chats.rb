class AddFollowUpToChats < ActiveRecord::Migration[7.0]
  def change
    add_column :chats, :follow_up_question, :string
    add_column :chats, :follow_up_answer, :string
  end
end
