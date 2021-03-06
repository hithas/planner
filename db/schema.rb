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

ActiveRecord::Schema.define(version: 20140807212014) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "checkpoints", force: true do |t|
    t.string   "name"
    t.integer  "goal_id"
    t.integer  "num"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
  end

  create_table "goals", force: true do |t|
    t.string   "name"
    t.integer  "category_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "checkpoints"
    t.string   "desc"
    t.integer  "user_id"
  end

  create_table "themes", force: true do |t|
    t.string   "name"
    t.boolean  "navbar",      limit: 255
    t.string   "background"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "transparent"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.integer  "theme_id"
  end

end
