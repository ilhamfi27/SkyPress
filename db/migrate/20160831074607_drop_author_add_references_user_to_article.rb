class DropAuthorAddReferencesUserToArticle < ActiveRecord::Migration
  def change
  	remove_column :articles, :author
  	add_reference :articles, :user, index: true, foreign_key: true
  end
end
