class AddTemplateToArticleComponents < ActiveRecord::Migration
  def change
    add_column :article_components, :template, :integer
  end
end
