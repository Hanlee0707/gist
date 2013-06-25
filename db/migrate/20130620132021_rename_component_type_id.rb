class RenameComponentTypeId < ActiveRecord::Migration
  def up
    rename_column :article_components, :component_id, :component_type_id
  end

  def down
    rename_column :article_components, :component_type_id, :component_id
  end
end
