class AddIsExpertToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isExpert, :boolean
  end
end
