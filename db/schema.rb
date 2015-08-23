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

ActiveRecord::Schema.define(version: 20150815211245) do

  create_table "courses", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "entity_name", limit: 100, null: false
    t.string   "career",      limit: 150, null: false
    t.date     "start",                   null: false
    t.date     "end"
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "company_name", limit: 100, null: false
    t.string   "position",     limit: 45,  null: false
    t.text     "description",              null: false
    t.date     "start"
    t.date     "end"
    t.integer  "person_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",              limit: 65,  null: false
    t.text     "avatar",                        null: false
    t.string   "email",             limit: 100, null: false
    t.string   "degree",            limit: 65,  null: false
    t.text     "short_description",             null: false
    t.text     "full_description",              null: false
    t.text     "resume_link",                   null: false
    t.text     "skill",                         null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.string   "name",        limit: 65, null: false
    t.text     "description",            null: false
    t.integer  "person_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end