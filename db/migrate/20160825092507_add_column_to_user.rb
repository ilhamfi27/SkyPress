class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
    add_column :users, :link, :text
  end
end
