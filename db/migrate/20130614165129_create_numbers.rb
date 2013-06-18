class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :value
      t.text :explanation
      t.integer :position
      t.integer :style

      t.timestamps
    end
  end
end
