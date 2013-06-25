class ArticleComponent < ActiveRecord::Base
  attr_accessible :component_type_id, :position, :title, :properties, :numbers_attributes, :template
  belongs_to :article
  belongs_to :component_type
  serialize :properties, Hash
  has_many :numbers
  accepts_nested_attributes_for :numbers

end
