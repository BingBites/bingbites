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

ActiveRecord::Schema.define(version: 20170518013549) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eateries", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.integer  "category_id"
    t.string   "eatery_img_file_name"
    t.string   "eatery_img_content_type"
    t.integer  "eatery_img_file_size"
    t.datetime "eatery_img_updated_at"
    t.string   "lat",                     default: "42.08733738208514"
    t.string   "long",                    default: "-75.97078230443904"
    t.integer  "rating",                  default: 0,                    null: false
    t.integer  "price_range",             default: 0,                    null: false
    t.string   "slug"
  end

  add_index "eateries", ["slug"], name: "index_eateries_on_slug", unique: true

  create_table "eatery_items", force: :cascade do |t|
    t.integer  "eatery_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "eatery_items", ["eatery_id"], name: "index_eatery_items_on_eatery_id"
  add_index "eatery_items", ["item_id"], name: "index_eatery_items_on_item_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "item_image_file_name"
    t.string   "item_image_content_type"
    t.integer  "item_image_file_size"
    t.datetime "item_image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "provider",   default: "", null: false
    t.string   "uid",        default: "", null: false
    t.string   "location"
    t.string   "image_url"
    t.string   "url"
    t.string   "role"
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true
  add_index "users", ["provider"], name: "index_users_on_provider"
  add_index "users", ["uid"], name: "index_users_on_uid"

end
