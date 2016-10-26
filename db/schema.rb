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

ActiveRecord::Schema.define(version: 20161026215237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer  "mentor_id"
    t.integer  "student_id"
    t.date     "date",       null: false
    t.time     "start_time", null: false
    t.time     "end_time",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentor_id"], name: "index_appointments_on_mentor_id", using: :btree
    t.index ["student_id"], name: "index_appointments_on_student_id", using: :btree
  end

  create_table "mentors", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mentors_on_user_id", using: :btree
  end

  create_table "phases", force: :cascade do |t|
    t.integer  "number",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strengths", force: :cascade do |t|
    t.integer  "mentor_id"
    t.integer  "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentor_id"], name: "index_strengths_on_mentor_id", using: :btree
    t.index ["topic_id"], name: "index_strengths_on_topic_id", using: :btree
  end

  create_table "student_feedbacks", force: :cascade do |t|
    t.string   "body",           null: false
    t.integer  "appointment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["appointment_id"], name: "index_student_feedbacks_on_appointment_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "phase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_students_on_phase_id", using: :btree
    t.index ["user_id"], name: "index_students_on_user_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "phase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_topics_on_phase_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role",                   default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "picture_url",            default: ""
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
