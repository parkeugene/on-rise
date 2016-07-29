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

ActiveRecord::Schema.define(version: 20160729120258) do

  create_table "posts", force: :cascade do |t|
    t.string   "img"
    t.string   "title"
    t.text     "description"
    t.string   "original_link"
    t.string   "trans_link"
    t.string   "translators"
    t.string   "goal"
    t.string   "area"
    t.string   "participation_way"
    t.integer  "likes_number"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "status"
    t.integer  "read_count"
    t.string   "contact"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "title"
    t.string   "team"
    t.string   "language"
    t.string   "link"
    t.date     "date"
    t.string   "image"
    t.string   "progress"
    t.boolean  "applicant"
    t.string   "content"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
