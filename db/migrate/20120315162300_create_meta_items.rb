class CreateMetaItems < ActiveRecord::Migration
  def change
    create_table :meta_items do |t|
      t.string :meta_key
      t.string :meta_value
      t.references :item

      t.timestamps
    end
    add_index :meta_items, :item_id
  end
end
