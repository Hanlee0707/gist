class CreateQuoteCards < ActiveRecord::Migration
  def change
    create_table :quote_cards do |t|
      t.text :content
      t.string :title
      t.string :name

      t.timestamps
    end
  end
end
