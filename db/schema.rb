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

ActiveRecord::Schema.define(version: 20160224124913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "caravan_images", force: :cascade do |t|
    t.string   "url"
    t.integer  "caravan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "caravan_images", ["caravan_id"], name: "index_caravan_images_on_caravan_id", using: :btree

  create_table "caravans", force: :cascade do |t|
    t.string   "street"
    t.string   "city"
    t.string   "zip_code"
    t.string   "country"
    t.integer  "capacity"
    t.integer  "price"
    t.boolean  "tv"
    t.boolean  "coffee_machine"
    t.boolean  "wifi"
    t.boolean  "shower"
    t.boolean  "kitchen"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "title"
    t.string   "photo"
  end

  add_index "caravans", ["user_id"], name: "index_caravans_on_user_id", using: :btree

  create_table "rentals", force: :cascade do |t|
    t.integer  "price"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "validated"
    t.integer  "caravan_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rentals", ["caravan_id"], name: "index_rentals_on_caravan_id", using: :btree
  add_index "rentals", ["user_id"], name: "index_rentals_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.string   "street"
    t.string   "city"
    t.string   "country"
    t.string   "zip_code"
    t.string   "gender"
    t.string   "photo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "caravan_images", "caravans"
  add_foreign_key "caravans", "users"
  add_foreign_key "rentals", "caravans"
  add_foreign_key "rentals", "users"
end
