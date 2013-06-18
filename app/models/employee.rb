class Employee < ActiveRecord::Base
  attr_accessible :account_create_time, :create_account_sent_at, :create_account_token, :email, :first_name, :last_name, :password_digest, :password_reset_sent_at, :password_reset_token
end
