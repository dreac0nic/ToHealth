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

ActiveRecord::Schema.define(version: 20151111010451) do

  create_table "answers", force: :cascade do |t|
    t.integer  "numAnswer"
    t.string   "openAnswer"
    t.integer  "user_id",        null: false
    t.integer  "question_id",    null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "questionText", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "todos", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "course"
    t.date     "dueDate"
    t.integer  "estTime"
    t.text     "description"
    t.integer  "priority"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "userName",   null: false
    t.string   "firstName",  null: false
    t.string   "lastName",   null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions", name: "answers_ibfk_2", on_delete: :cascade
  add_foreign_key "answers", "users", name: "answers_ibfk_1", on_delete: :cascade
  add_foreign_key "tasks", "users", name: "tasks_ibfk_1", on_delete: :cascade

end