class CreateImageCards < ActiveRecord::Migration
  def change
    create_table :image_cards do |t|
      t.string :url
      t.text :caption

      t.timestamps
    end
  end
end
