class Comment < ActiveRecord::Base
  attr_accessible :article_id, :content, :dislike, :like, :user_id
  belongs_to :article
  belongs_to :user
end
