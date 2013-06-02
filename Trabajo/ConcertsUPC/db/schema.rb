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

ActiveRecord::Schema.define(:version => 20130602053003) do

  create_table "groups", :force => true do |t|
    t.string   "group"
    t.integer  "user_id"
    t.string   "list"
    t.string   "style"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups", ["user_id"], :name => "index_groups_on_user_id"

  create_table "register_groups", :force => true do |t|
    t.string   "musical_group"
    t.string   "member"
    t.string   "lista"
    t.string   "estilo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
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
