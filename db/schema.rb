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

ActiveRecord::Schema.define(version: 20140327173548) do

  create_table "contents", force: true do |t|
    t.string   "quote"
    t.string   "quote_by"
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
  end

  create_table "tests", force: true do |t|
    t.string   "title"
    t.integer  "duration"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "end_date"
    t.integer  "used_id"
    t.boolean  "test_completed"
    t.boolean  "results_emailed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_url"
  end

end
