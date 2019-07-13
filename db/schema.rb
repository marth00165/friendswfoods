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

ActiveRecord::Schema.define(version: 2019_07_13_185917) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "user_event_id"
    t.integer "restaurant_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "eventimg"
  end

  create_table "likeds", force: :cascade do |t|
    t.string "restaurant_id"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_events", force: :cascade do |t|
    t.string "name"
    t.string "restaurant_location"
    t.integer "event_id"
    t.boolean "full"
    t.integer "amount_of_members"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "cuisine"
    t.integer "like_id"
    t.integer "zipcode"
    t.integer "restaurant_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "restaurantimg"
  end

  create_table "user_events", force: :cascade do |t|
    t.string "user_id"
    t.string "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "age"
    t.string "gender"
    t.string "location"
    t.string "password"
    t.string "fav_meal"
    t.string "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "userimg"
  end

end
