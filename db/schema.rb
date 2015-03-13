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

ActiveRecord::Schema.define(version: 20150313163405) do

  create_table "contents", force: true do |t|
    t.string   "quote"
    t.text     "quote_by",   limit: 255
    t.string   "tagline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.string   "category"
    t.string   "option_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "test_id"
    t.string   "chosen_word"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results_tests", force: true do |t|
    t.integer  "test_id"
    t.integer  "result_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_options", force: true do |t|
    t.integer  "test_user_id"
    t.integer  "option_id"
    t.boolean  "is_good",      default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_users", force: true do |t|
    t.integer  "test_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip_address"
    t.string   "user_agent"
  end

  create_table "tests", force: true do |t|
    t.string   "title"
    t.integer  "duration"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "end_date"
    t.integer  "user_id"
    t.boolean  "test_completed"
    t.boolean  "results_emailed",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_url"
    t.string   "chosen_destination"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
