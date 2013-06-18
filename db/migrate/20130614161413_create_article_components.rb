class CreateArticleComponents < ActiveRecord::Migration
  def change
    create_table :article_components do |t|
      t.integer :article_id
      t.integer :component_id
      t.integer :position
      t.string :type

      t.timestamps
    end
  end
end
