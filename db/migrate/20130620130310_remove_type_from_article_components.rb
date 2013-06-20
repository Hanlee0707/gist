class RemoveTypeFromArticleComponents < ActiveRecord::Migration
  def up
    remove_column :article_components, :type
  end

  def down
    add_column :article_components, :type, :string
  end
end
