class ArticleComponent < ActiveRecord::Base
  attr_accessible :article_id, :component_id, :position, :type
end
