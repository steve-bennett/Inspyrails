class CreateTagCategories < ActiveRecord::Migration
  def change
    create_table :tag_categories do |t|
      t.references :tag
      t.references :category

      t.timestamps
    end
    add_index :tag_categories, :tag_id
    add_index :tag_categories, :category_id
  end
end
