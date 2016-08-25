class RemoveColumnCreatedOnArticles < ActiveRecord::Migration
  def change
  	remove_column :articles, :created
  end
end
