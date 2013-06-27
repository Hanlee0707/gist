class User < ActiveRecord::Base
  has_secure_password 
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  VALID_PASSWORD_REGEX = /^[\S]+$/
  validates :email, :presence => :true,
                    :uniqueness => {:case_sensitive => false},
                    :length => {:minimun => 3, :maximum => 50},
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :password, presence: true,  length: {:minimum => 8, :maximum => 20},:if => :should_validate_password?
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  def should_validate_password?
    new_record?
  end

end
