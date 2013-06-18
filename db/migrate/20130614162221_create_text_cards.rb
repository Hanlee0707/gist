class CreateTextCards < ActiveRecord::Migration
  def change
    create_table :text_cards do |t|
      t.text :content

      t.timestamps
    end
  end
end
