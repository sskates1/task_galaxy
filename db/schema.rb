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

ActiveRecord::Schema.define(version: 20140616085954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tasklists", force: true do |t|
    t.string "name",        null: false
    t.string "description"
  end

  create_table "tasks", force: true do |t|
    t.string  "name",        null: false
    t.string  "description"
    t.string  "due_date"
    t.integer "user_id"
  end

  create_table "tasks_tasklists", id: false, force: true do |t|
    t.integer "task_id",     null: false
    t.integer "tasklist_id", null: false
  end

  add_index "tasks_tasklists", ["task_id"], name: "index_tasks_tasklists_on_task_id", using: :btree
  add_index "tasks_tasklists", ["tasklist_id"], name: "index_tasks_tasklists_on_tasklist_id", using: :btree

  create_table "users", force: true do |t|
    t.string "email",      null: false
    t.string "first_name"
    t.string "last_name"
  end

  create_table "users_tasklists", id: false, force: true do |t|
    t.integer "user_id",     null: false
    t.integer "tasklist_id", null: false
  end

  add_index "users_tasklists", ["tasklist_id"], name: "index_users_tasklists_on_tasklist_id", using: :btree
  add_index "users_tasklists", ["user_id"], name: "index_users_tasklists_on_user_id", using: :btree

end
