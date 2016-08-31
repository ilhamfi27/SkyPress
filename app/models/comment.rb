class Comment < ActiveRecord::Base
  belongs_to :article, dependent: :destroy
  belongs_to :user
end
