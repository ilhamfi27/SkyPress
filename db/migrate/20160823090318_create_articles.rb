class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :article
      t.string :author
      t.date :created

      t.timestamps null: false
    end
  end
end
