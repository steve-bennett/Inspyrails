class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :type

      t.timestamps
    end
    add_index :items, :type_id
  end
end
