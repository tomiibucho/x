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

ActiveRecord::Schema.define(version: 20140204142059) do

  create_table "batters", force: true do |t|
    t.string   "name"
    t.string   "team"
    t.string   "position"
    t.float    "avg"
    t.float    "hr"
    t.float    "total_point"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formations", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "myteams", force: true do |t|
    t.string   "name"
    t.string   "formation"
    t.string   "myplayer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pitchers", force: true do |t|
    t.string   "name"
    t.string   "team"
    t.string   "position"
    t.float    "era"
    t.float    "so"
    t.float    "total_point"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "team"
    t.string   "position"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.boolean  "done",       default: false
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "starter1"
    t.string   "starter2"
    t.string   "reliever1"
    t.string   "reliever2"
    t.string   "catcher"
    t.string   "first"
    t.string   "second"
    t.string   "third"
    t.string   "short"
    t.string   "outfielder1"
    t.string   "outfielder2"
    t.string   "outfielder3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
