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

ActiveRecord::Schema.define(:version => 20130603045448) do

  create_table "concerts", :force => true do |t|
    t.integer  "local_id"
    t.integer  "group_id"
    t.date     "dateconcert"
    t.time     "hourstart"
    t.time     "hourend"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "name"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "genre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zona"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.float    "longitude"
    t.float    "latitude"
    t.string   "phone"
    t.boolean  "gmaps"
  end

  create_table "register_groups", :force => true do |t|
    t.string   "musical_group"
    t.string   "member"
    t.string   "lista"
    t.string   "estilo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "user_concerts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "concert_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_groups", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "typeuser"
    t.string   "name"
    t.string   "lastname"
    t.string   "secondlastname"
    t.string   "sex"
    t.integer  "typedocument"
    t.string   "document"
    t.string   "email"
    t.string   "password"
    t.string   "email_confirmation"
    t.string   "password_confirmation"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
