class CreateTagUserdreams < ActiveRecord::Migration
  def change
    create_table :tag_userdreams do |t|
      t.references :tag
      t.references :user

      t.timestamps
    end
    add_index :tag_userdreams, :tag_id
    add_index :tag_userdreams, :user_id
  end
end
