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

ActiveRecord::Schema.define(version: 20131025172143) do

  create_table "projects", force: true do |t|
    t.string "name"
  end

  create_table "stories", force: true do |t|
    t.string  "in_order_to", limit: 150
    t.string  "as_a",        limit: 50
    t.string  "i_want_to",   limit: 500
    t.integer "value",       limit: 1
    t.integer "complexity",  limit: 1
    t.integer "position",                default: 0
  end

end
