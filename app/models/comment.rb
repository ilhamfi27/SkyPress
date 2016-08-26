class Comment < ActiveRecord::Base
  belongs_to :article, dependent: :destroy
  belongs_to :user, foreign_key: 'commenter'
end
