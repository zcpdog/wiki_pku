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

ActiveRecord::Schema.define(version: 20140515073718) do

  create_table "categories_entries", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "entry_id"
  end

  add_index "categories_entries", ["category_id"], name: "index_categories_entries_on_category_id"
  add_index "categories_entries", ["entry_id"], name: "index_categories_entries_on_entry_id"

  create_table "wiki_pku_categories", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_categories", ["ancestry"], name: "index_wiki_pku_categories_on_ancestry"
  add_index "wiki_pku_categories", ["position"], name: "index_wiki_pku_categories_on_position"

  create_table "wiki_pku_categories_entries", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "entry_id"
  end

  add_index "wiki_pku_categories_entries", ["category_id"], name: "index_wiki_pku_categories_entries_on_category_id"
  add_index "wiki_pku_categories_entries", ["entry_id"], name: "index_wiki_pku_categories_entries_on_entry_id"

  create_table "wiki_pku_entries", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_entries", ["user_id"], name: "index_wiki_pku_entries_on_user_id"

  create_table "wiki_pku_pictures", force: true do |t|
    t.integer  "imageable_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wiki_pku_pictures", ["imageable_id"], name: "index_wiki_pku_pictures_on_imageable_id"

  create_table "wiki_pku_users", force: true do |t|
    t.string   "name",                default: "",       null: false
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

  add_index "wiki_pku_users", ["email"], name: "index_wiki_pku_users_on_email", unique: true
  add_index "wiki_pku_users", ["name"], name: "index_wiki_pku_users_on_name", unique: true

end
