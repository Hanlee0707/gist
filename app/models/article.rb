class Article < ActiveRecord::Base
  attr_accessible :category, :contributor_id, :status, :title
  has_many :article_components, dependent: :destroy
  has_many :numbers, :through => :article_components, dependent: :destroy
end
