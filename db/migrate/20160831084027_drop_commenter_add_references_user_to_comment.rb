class DropCommenterAddReferencesUserToComment < ActiveRecord::Migration
  def change
  	remove_column :comments, :commenter
  	add_reference :comments, :user, index: true, foreign_key: true
  end
end
