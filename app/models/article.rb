class Article < ActiveRecord::Base
	belongs_to :user, foreign_key: 'author', dependent: :destroy
	has_many :comments
end
