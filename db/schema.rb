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

ActiveRecord::Schema.define(version: 2018_11_22_075941) do

  create_table "cloths", force: :cascade do |t|
    t.integer "user_id"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outfits", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stylist_id"
    t.integer "shoe_id"
    t.integer "trouser_id"
    t.integer "shirt_id"
    t.integer "integer_checked"
    t.string "outfit_type"
    t.string "season"
    t.string "name"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encrypted_password"
    t.string "salt"
    t.integer "usertype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
