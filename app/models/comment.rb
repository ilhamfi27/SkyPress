class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user, foreign_key: 'commenter'
end
