class Number < ActiveRecord::Base
  attr_accessible :explanation, :value
  belongs_to :article_component
end
