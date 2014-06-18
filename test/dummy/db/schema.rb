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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140617052638) do

  create_table "wiki_pku_blocks", force: true do |t|
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_blocks", ["category_id"], name: "index_wiki_pku_blocks_on_category_id", using: :btree

  create_table "wiki_pku_categories", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ancestry_depth"
    t.integer  "wiki_pku_tab_id"
  end

  add_index "wiki_pku_categories", ["ancestry"], name: "index_wiki_pku_categories_on_ancestry", using: :btree
  add_index "wiki_pku_categories", ["position"], name: "index_wiki_pku_categories_on_position", using: :btree
  add_index "wiki_pku_categories", ["wiki_pku_tab_id"], name: "index_wiki_pku_categories_on_wiki_pku_tab_id", using: :btree

  create_table "wiki_pku_categories_entries", force: true do |t|
    t.integer "category_id"
    t.integer "entry_id"
  end

  add_index "wiki_pku_categories_entries", ["category_id"], name: "index_wiki_pku_categories_entries_on_category_id", using: :btree
  add_index "wiki_pku_categories_entries", ["entry_id"], name: "index_wiki_pku_categories_entries_on_entry_id", using: :btree

  create_table "wiki_pku_comments", force: true do |t|
    t.text     "content"
    t.integer  "entry_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_comments", ["entry_id"], name: "index_wiki_pku_comments_on_entry_id", using: :btree
  add_index "wiki_pku_comments", ["user_id"], name: "index_wiki_pku_comments_on_user_id", using: :btree

  create_table "wiki_pku_entries", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "entry_type"
    t.text     "abstract"
    t.string   "tag_text"
    t.integer  "show_times", default: 0
    t.integer  "edit_times", default: 0
  end

  add_index "wiki_pku_entries", ["user_id"], name: "index_wiki_pku_entries_on_user_id", using: :btree

  create_table "wiki_pku_entries_tags", force: true do |t|
    t.integer  "entry_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_entries_tags", ["entry_id"], name: "index_wiki_pku_entries_tags_on_entry_id", using: :btree
  add_index "wiki_pku_entries_tags", ["tag_id"], name: "index_wiki_pku_entries_tags_on_tag_id", using: :btree

  create_table "wiki_pku_likes", force: true do |t|
    t.integer  "entry_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_likes", ["entry_id"], name: "index_wiki_pku_likes_on_entry_id", using: :btree
  add_index "wiki_pku_likes", ["user_id"], name: "index_wiki_pku_likes_on_user_id", using: :btree

  create_table "wiki_pku_pictures", force: true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_pictures", ["imageable_id", "imageable_type"], name: "index_wiki_pku_pictures_on_imageable_id_and_imageable_type", using: :btree

  create_table "wiki_pku_tabs", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_tabs", ["category_id"], name: "index_wiki_pku_tabs_on_category_id", using: :btree

  create_table "wiki_pku_tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_tags", ["name"], name: "index_wiki_pku_tags_on_name", using: :btree

  create_table "wiki_pku_ueditor_images", force: true do |t|
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wiki_pku_users", force: true do |t|
    t.string   "username",            default: "",       null: false
    t.string   "email",               default: "",       null: false
    t.string   "encrypted_password",  default: "",       null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role",                default: "normal", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_users", ["email"], name: "index_wiki_pku_users_on_email", unique: true, using: :btree
  add_index "wiki_pku_users", ["username"], name: "index_wiki_pku_users_on_username", unique: true, using: :btree

end
