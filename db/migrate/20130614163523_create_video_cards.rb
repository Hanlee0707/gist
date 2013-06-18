class CreateVideoCards < ActiveRecord::Migration
  def change
    create_table :video_cards do |t|
      t.string :url
      t.text :caption

      t.timestamps
    end
  end
end
