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

ActiveRecord::Schema.define(version: 20141001060230) do

  create_table "post_replies", id: false, force: true do |t|
    t.integer  "post_id"
    t.integer  "reply_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_replies", ["post_id", "reply_id"], name: "index_post_replies_on_post_id_and_reply_id", unique: true

  create_table "posts", force: true do |t|
    t.string   "body"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
