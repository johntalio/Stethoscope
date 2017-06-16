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

ActiveRecord::Schema.define(version: 20170616170042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string   "image_url"
    t.string   "first_name",     null: false
    t.string   "last_name",      null: false
    t.string   "title",          null: false
    t.string   "bio"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "city"
    t.string   "state"
    t.string   "street"
    t.string   "zip"
    t.string   "specialty"
    t.string   "specialty_info"
    t.string   "phone_num"
    t.string   "phone_type"
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "purpose"
    t.string   "warnings"
    t.string   "dosage_and_administration"
    t.string   "pregnancy_or_breast_feeding"
    t.string   "stop_use"
    t.string   "do_not_use"
    t.string   "indications_and_usage"
    t.string   "active_ingredient"
    t.string   "questions"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "drug_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
