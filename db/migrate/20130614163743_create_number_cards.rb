class CreateNumberCards < ActiveRecord::Migration
  def change
    create_table :number_cards do |t|

      t.timestamps
    end
  end
end
