class CreateComponentFields < ActiveRecord::Migration
  def change
    create_table :component_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :component_type

      t.timestamps
    end
    add_index :component_fields, :component_type_id
  end
end
