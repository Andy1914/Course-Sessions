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

ActiveRecord::Schema.define(:version => 20140414205646) do

  create_table "algorithms", :force => true do |t|
    t.string   "question"
    t.integer  "trait"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "answers", :force => true do |t|
    t.integer  "answer"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.text     "institution"
    t.text     "instructor"
    t.text     "description"
    t.string   "section"
    t.text     "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "section_id"
  end

  create_table "departments", :force => true do |t|
    t.string   "department"
    t.string   "description"
    t.string   "personality"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "educations", :force => true do |t|
    t.string   "education_level"
    t.string   "job"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "hhcodes", :force => true do |t|
    t.integer  "doers"
    t.integer  "persuaders"
    t.integer  "helpers"
    t.integer  "creators"
    t.integer  "thinkers"
    t.integer  "organizers"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personalities", :force => true do |t|
    t.integer  "doers"
    t.integer  "thinkers"
    t.integer  "creators"
    t.integer  "helpers"
    t.integer  "persuaders"
    t.integer  "organizers"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "personality_types"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
