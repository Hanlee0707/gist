class EmployeePositions < ActiveRecord::Base
  attr_accessible :employee_id, :position
  belongs_to :employee
end
