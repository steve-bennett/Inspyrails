class CreateTagDreams < ActiveRecord::Migration
  def change
    create_table :tag_dreams do |t|
      t.references :tag
      t.references :dream

      t.timestamps
    end
    add_index :tag_dreams, :tag_id
    add_index :tag_dreams, :dream_id
  end
end
