class NewsLink < ActiveRecord::Base
  attr_accessible :publisher, :url
  belongs_to :article_components
end
