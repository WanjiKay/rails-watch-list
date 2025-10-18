class RemoveUserIdFromBookmarks < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :user_id, :text
  end
end
