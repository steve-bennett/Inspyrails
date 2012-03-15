class CreateItemUserdreams < ActiveRecord::Migration
  def change
    create_table :item_userdreams do |t|
      t.references :item
      t.references :dream

      t.timestamps
    end
    add_index :item_userdreams, :item_id
    add_index :item_userdreams, :dream_id
  end
end
