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

ActiveRecord::Schema.define(version: 20150311042600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "annotations", force: true do |t|
    t.text     "entry"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "formatted_entry"
    t.string   "name"
  end

  create_table "days", force: true do |t|
    t.integer  "repository_id"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.text     "entry"
    t.text     "formatted_entry"
    t.string   "topic"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "summary"
    t.boolean  "viewable"
  end

  create_table "repositories", force: true do |t|
    t.string   "name"
    t.string   "site"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
