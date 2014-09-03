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

ActiveRecord::Schema.define(version: 20140903182011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dashboards", force: true do |t|
    t.integer "users_id"
    t.integer "strava_panels_id"
    t.integer "fitbit_panels_id"
    t.integer "goals_id"
  end

  create_table "fitbits", force: true do |t|
    t.float   "total_distance"
    t.integer "calories"
    t.integer "steps"
  end

  create_table "goals", force: true do |t|
    t.string   "description"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
    t.date     "goal_date"
  end

  create_table "stravas", force: true do |t|
    t.integer "athlete_id"
    t.integer "activity_id"
    t.string  "name"
    t.float   "distance"
    t.time    "moving_time"
    t.time    "elapsed_time"
    t.string  "type"
    t.date    "date"
    t.string  "city"
    t.string  "state"
    t.string  "country"
    t.float   "max_speed"
    t.float   "avg_speed"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.float    "height"
    t.float    "weight"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "gender"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
