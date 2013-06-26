class Article < ActiveRecord::Base
  attr_accessible :category, :contributor_id, :status, :title, :article_components_attributes
  has_many :article_components, dependent: :destroy
  has_many :numbers, :through => :article_components, dependent: :destroy
  accepts_nested_attributes_for :article_components
end
