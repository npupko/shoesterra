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

ActiveRecord::Schema.define(version: 20160710173227) do

  create_table "carousels", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "carousel_image_file_name"
    t.string   "carousel_image_content_type"
    t.integer  "carousel_image_file_size"
    t.datetime "carousel_image_updated_at"
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "news_image_file_name"
    t.string   "news_image_content_type"
    t.integer  "news_image_file_size"
    t.datetime "news_image_updated_at"
    t.string   "news_type"
  end

  create_table "products", force: :cascade do |t|
    t.string   "brand"
    t.decimal  "price"
    t.string   "season"
    t.string   "sex"
    t.string   "top_matereal"
    t.string   "pad_matereal"
    t.string   "sole_matereal"
    t.string   "shoe_type"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
    t.string   "first_image_file_name"
    t.string   "first_image_content_type"
    t.integer  "first_image_file_size"
    t.datetime "first_image_updated_at"
    t.string   "second_image_file_name"
    t.string   "second_image_content_type"
    t.integer  "second_image_file_size"
    t.datetime "second_image_updated_at"
    t.string   "third_image_file_name"
    t.string   "third_image_content_type"
    t.integer  "third_image_file_size"
    t.datetime "third_image_updated_at"
    t.string   "fourth_image_file_name"
    t.string   "fourth_image_content_type"
    t.integer  "fourth_image_file_size"
    t.datetime "fourth_image_updated_at"
    t.string   "fifth_image_file_name"
    t.string   "fifth_image_content_type"
    t.integer  "fifth_image_file_size"
    t.datetime "fifth_image_updated_at"
    t.boolean  "size_34"
    t.boolean  "size_35"
    t.boolean  "size_36"
    t.boolean  "size_37"
    t.boolean  "size_38"
    t.boolean  "size_39"
    t.boolean  "size_40"
    t.boolean  "size_41"
    t.boolean  "size_42"
    t.boolean  "size_43"
    t.boolean  "size_44"
    t.boolean  "size_45"
    t.boolean  "size_46"
    t.boolean  "size_47"
    t.boolean  "size_48"
    t.integer  "discount_status"
    t.boolean  "popular_status"
    t.string   "vendor"
    t.boolean  "priority"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
