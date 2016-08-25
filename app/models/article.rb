class Article < ActiveRecord::Base
	belongs_to :user, foreign_key: 'author'
	has_many :comments
end
