class RemovePositionFromNumbers < ActiveRecord::Migration
  def up
    remove_column :numbers, :position
    remove_column :numbers, :style
    add_column :numbers, :article_component_id, :integer
  end

  def down
    add_column :numbers, :position, :integer
    add_column :numbers, :style, :integer
    remove_column :numbers, :article_component_id
  end
end
