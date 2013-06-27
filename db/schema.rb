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

ActiveRecord::Schema.define(version: 20130627143735) do

  create_table "reservations", force: true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "party_size"
    t.date     "date"
    t.time     "time"
  end

  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id", unique: true
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", unique: true

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "neighbourhood"
    t.string   "price_range"
    t.text     "summary"
    t.string   "menu"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

end
