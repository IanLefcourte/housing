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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130531231228) do

  create_table "children", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "children_parents", :id => false, :force => true do |t|
    t.integer "child_id"
    t.integer "parent_id"
  end

  create_table "childs_parents", :id => false, :force => true do |t|
    t.integer "child_id"
    t.integer "parent_id"
  end

  create_table "housing_parents", :force => true do |t|
    t.integer  "parent_id"
    t.datetime "start_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "residence_id"
  end

  create_table "lists", :force => true do |t|
    t.string   "name"
    t.string   "organization"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
  end

  create_table "parents", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "parents_residences", :id => false, :force => true do |t|
    t.integer "parent_id"
    t.integer "residence_id"
  end

  create_table "parents_waitlists", :force => true do |t|
    t.integer "parent_id"
    t.integer "residence_id"
    t.date    "start_date"
  end

  create_table "residences", :force => true do |t|
    t.string   "name"
    t.string   "waitlist"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "waitlist_time"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "lists_id"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "waitlists", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "residence_id"
    t.datetime "start_date"
  end

end
