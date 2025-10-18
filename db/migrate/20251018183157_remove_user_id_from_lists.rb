class RemoveUserIdFromLists < ActiveRecord::Migration[7.1]
  def change
    remove_column :lists, :user_id, :text
  end
end
