class Employee < ActiveRecord::Base
  attr_accessible :account_create_time, :create_account_sent_at, :create_account_token, :email, :first_name, :last_name, :password_digest, :password_reset_sent_at, :password_reset_token

  has_many :employee_positions, dependent: :destroy
  has_many :employee_position_types, :through => :employee_positions
  VALID_PASSWORD_REGEX = /^[\S]+$/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

end
