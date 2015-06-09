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

ActiveRecord::Schema.define(version: 20150514203747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.integer  "d_number"
    t.string   "d_name"
    t.string   "d_qualification"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "p_number"
    t.string   "p_name"
    t.integer  "p_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treats", force: :cascade do |t|
    t.date     "t_date"
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "treats", ["doctor_id"], name: "index_treats_on_doctor_id", using: :btree
  add_index "treats", ["patient_id"], name: "index_treats_on_patient_id", using: :btree

  add_foreign_key "treats", "doctors"
  add_foreign_key "treats", "patients"
end
