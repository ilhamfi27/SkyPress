class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	acts_as_taggable_on :tags

	def self.search(search)
	  where("title LIKE ? OR body LIKE ?", "%#{search}%", "%#{search}%")
	  # search_condition = "%" + search + "%"
	  # find(:all, :conditions => ["title LIKE ? OR body LIKE ?", "%#{search}%", "%#{search}%"])
	end
end
