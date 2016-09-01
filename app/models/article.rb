class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	acts_as_taggable_on :tags
end
