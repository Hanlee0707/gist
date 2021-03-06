class ComponentType < ActiveRecord::Base
  attr_accessible :name, :fields_attributes, :id
  has_many :fields, class_name: "ComponentField"
  accepts_nested_attributes_for :fields, allow_destroy: true

end
