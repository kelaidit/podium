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

ActiveRecord::Schema.define(version: 20170402123935) do

  create_table "books", force: :cascade do |t|
    t.string  "title"
    t.integer "id_catogry"
    t.integer "id_category"
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

  create_table "sysdiagrams", primary_key: "diagram_id", force: :cascade do |t|
    t.string  "name",         limit: 128,        null: false
    t.integer "principal_id",                    null: false
    t.integer "version"
    t.binary  "definition",   limit: 2147483647
    t.index ["principal_id", "name"], name: "UK_principal_name", unique: true
  end

end
