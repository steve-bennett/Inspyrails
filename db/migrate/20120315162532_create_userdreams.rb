class CreateUserdreams < ActiveRecord::Migration
  def change
    create_table :userdreams do |t|
      t.references :user
      t.references :dream

      t.timestamps
    end
    add_index :userdreams, :user_id
    add_index :userdreams, :dream_id
  end
end
