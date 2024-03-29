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

ActiveRecord::Schema.define(version: 20140416210613) do

  create_table "bookings", force: true do |t|
    t.integer  "user_id"
    t.integer  "carinfo_id"
    t.date     "pick_up"
    t.date     "return"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carinfos", force: true do |t|
    t.string   "car_brand"
    t.string   "brand_model"
    t.string   "registration"
    t.integer  "passenger_count"
    t.integer  "rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carinfos", ["registration"], name: "index_carinfos_on_registration", unique: true

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
