class AddArticleComponentIdToNewsLinks < ActiveRecord::Migration
  def change
    add_column :news_links, :article_component_id, :integer
  end
end
