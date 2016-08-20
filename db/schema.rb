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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160820052118) do
=======
ActiveRecord::Schema.define(version: 20160806162408) do
>>>>>>> master

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
<<<<<<< HEAD
    t.string   "subtitle"
    t.string   "original_url"
    t.string   "translation_url"
    t.text     "description"
    t.string   "contributor"
    t.string   "contributor_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
=======
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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
>>>>>>> master
  end

end
