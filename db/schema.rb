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

ActiveRecord::Schema.define(version: 20150822022804) do

  create_table "answers", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "question_id"
    t.string   "vote_id"
    t.string   "anstype"
  end

  create_table "questions", force: :cascade do |t|
    t.text     "content"
    t.integer  "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "vote_id"
    t.string   "yes_option"
    t.string   "no_option"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "like"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "question_id"
    t.string   "answer_id"
    t.integer  "yes"
    t.integer  "no"
  end

end
