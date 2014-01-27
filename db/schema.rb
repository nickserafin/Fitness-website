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

ActiveRecord::Schema.define(:version => 20130321011650) do

  create_table "advertisments", :force => true do |t|
    t.string   "title"
    t.text     "descritption"
    t.string   "image_path"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.integer  "Height"
    t.integer  "Weight"
    t.integer  "ActivityLevel"
    t.date     "JoinDate"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "nutrition_clients", :force => true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.integer  "Height"
    t.integer  "Weight"
    t.integer  "DailyCalories"
    t.date     "JoinDate"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "promotions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "ImagePath"
    t.date     "StartDate"
    t.date     "EndDate"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
