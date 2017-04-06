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

ActiveRecord::Schema.define(version: 20170404203850) do

  create_table "books", force: :cascade do |t|
    t.string  "title"
    t.integer "category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "categorys", force: :cascade do |t|
    t.string "title"
  end

  create_table "myusers", force: :cascade do |t|
    t.string "name"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "description", limit: 2147483647
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "pubs", force: :cascade do |t|
    t.string   "title"
    t.text     "description", limit: 2147483647
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "sysdiagrams", primary_key: "diagram_id", force: :cascade do |t|
    t.string  "name",         limit: 128,        null: false
    t.integer "principal_id",                    null: false
    t.integer "version"
    t.binary  "definition",   limit: 2147483647
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end

  create_table "todos", force: :cascade do |t|
    t.string   "title"
    t.text     "notes",      limit: 2147483647
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "role"
  end

end
