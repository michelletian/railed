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

ActiveRecord::Schema.define(version: 20141202005810) do

  create_table "bathrooms", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cleanliness"
    t.integer  "comfort"
    t.integer  "smell"
    t.integer  "availability"
  end

  create_table "reviews", force: true do |t|
    t.string   "text"
    t.integer  "bathroom_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cleanliness"
    t.integer  "comfort"
    t.integer  "smell"
    t.integer  "availability"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "review_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
