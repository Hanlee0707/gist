class AddTitleToArticleComponents < ActiveRecord::Migration
  def change
    add_column :article_components, :title, :string
  end
end
