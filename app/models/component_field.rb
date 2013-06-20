class ComponentField < ActiveRecord::Base
  belongs_to :component_type
  attr_accessible :field_type, :name, :required
end
