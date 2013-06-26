class CreateNewsLinks < ActiveRecord::Migration
  def change
    create_table :news_links do |t|
      t.string :publisher
      t.string :url

      t.timestamps
    end
  end
end
