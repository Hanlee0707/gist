class ArticleComponent < ActiveRecord::Base
  attr_accessible :component_type_id, :position, :title, :properties, :numbers_attributes, :template, :news_links_attributes
  belongs_to :article
  belongs_to :component_type
  serialize :properties, Hash
  has_many :numbers
  accepts_nested_attributes_for :numbers
  has_many :news_links
  accepts_nested_attributes_for :news_links


  validate :validate_properties

  def validate_properties
    component_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
