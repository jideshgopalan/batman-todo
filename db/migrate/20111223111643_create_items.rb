class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.boolean :done
      t.integer :position
      t.references :list

      t.timestamps
    end
    add_index :items, :list_id
  end
end
