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

ActiveRecord::Schema.define(version: 20161207205709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "author_id",     null: false
    t.integer  "session_id",    null: false
    t.text     "feedback_text", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "mentor_id",        null: false
    t.integer  "slot_id",          null: false
    t.datetime "session_datetime", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "slots", force: :cascade do |t|
    t.string   "day",        null: false
    t.string   "start",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name",                                                                          null: false
    t.string   "email",                                                                              null: false
    t.string   "picture_link",    default: "http://www.sessionlogs.com/media/icons/defaultIcon.png"
    t.string   "password_digest",                                                                    null: false
    t.string   "phone_number",                                                                       null: false
    t.datetime "created_at",                                                                         null: false
    t.datetime "updated_at",                                                                         null: false
  end

end
