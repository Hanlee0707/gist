class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :status
      t.integer :contributor_id
      t.string :category

      t.timestamps
    end
  end
end
