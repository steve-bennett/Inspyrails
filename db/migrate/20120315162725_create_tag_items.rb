class CreateTagItems < ActiveRecord::Migration
  def change
    create_table :tag_items do |t|
      t.references :tag
      t.references :item

      t.timestamps
    end
    add_index :tag_items, :tag_id
    add_index :tag_items, :item_id
  end
end
