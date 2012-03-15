# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120315162943) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dreams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facebooks", :force => true do |t|
    t.string   "identifier",   :limit => 20
    t.string   "access_token"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "item_userdreams", :force => true do |t|
    t.integer  "item_id"
    t.integer  "dream_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "item_userdreams", ["dream_id"], :name => "index_item_userdreams_on_dream_id"
  add_index "item_userdreams", ["item_id"], :name => "index_item_userdreams_on_item_id"

  create_table "items", :force => true do |t|
    t.integer  "type_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "items", ["type_id"], :name => "index_items_on_type_id"

  create_table "meta_items", :force => true do |t|
    t.string   "meta_key"
    t.string   "meta_value"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "meta_items", ["item_id"], :name => "index_meta_items_on_item_id"

  create_table "tag_categories", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tag_categories", ["category_id"], :name => "index_tag_categories_on_category_id"
  add_index "tag_categories", ["tag_id"], :name => "index_tag_categories_on_tag_id"

  create_table "tag_dreams", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "dream_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tag_dreams", ["dream_id"], :name => "index_tag_dreams_on_dream_id"
  add_index "tag_dreams", ["tag_id"], :name => "index_tag_dreams_on_tag_id"

  create_table "tag_items", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tag_items", ["item_id"], :name => "index_tag_items_on_item_id"
  add_index "tag_items", ["tag_id"], :name => "index_tag_items_on_tag_id"

  create_table "tag_userdreams", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tag_userdreams", ["tag_id"], :name => "index_tag_userdreams_on_tag_id"
  add_index "tag_userdreams", ["user_id"], :name => "index_tag_userdreams_on_user_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "userdreams", :force => true do |t|
    t.integer  "user_id"
    t.integer  "dream_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "userdreams", ["dream_id"], :name => "index_userdreams_on_dream_id"
  add_index "userdreams", ["user_id"], :name => "index_userdreams_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.datetime "last_logged_in"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
