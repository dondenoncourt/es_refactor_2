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

ActiveRecord::Schema.define(:version => 20160112134839) do

  create_table "commentaries", :force => true do |t|
    t.string   "content"
    t.string   "town"
    t.string   "region"
    t.string   "country"
    t.decimal  "lat",        :precision => 64, :scale => 12
    t.decimal  "lon",        :precision => 64, :scale => 12
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "scene_id"
  end

  create_table "people", :force => true do |t|
    t.string   "town"
    t.string   "region"
    t.string   "country"
    t.decimal  "lat",        :precision => 64, :scale => 12
    t.decimal  "lon",        :precision => 64, :scale => 12
    t.string   "name"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "scene_id"
  end

  create_table "photos", :force => true do |t|
    t.string   "town"
    t.string   "region"
    t.string   "country"
    t.decimal  "lat",        :precision => 64, :scale => 12
    t.decimal  "lon",        :precision => 64, :scale => 12
    t.date     "date"
    t.text     "urls",                                       :default => "'--- []\n'"
    t.datetime "created_at",                                                           :null => false
    t.datetime "updated_at",                                                           :null => false
    t.integer  "scene_id"
  end

  create_table "scenes", :force => true do |t|
    t.string   "region"
    t.string   "statement"
    t.date     "submissionDate"
    t.string   "title"
    t.text     "reports",                                        :default => "'--- []\n'"
    t.string   "town"
    t.string   "country"
    t.decimal  "lat",            :precision => 64, :scale => 12
    t.decimal  "lon",            :precision => 64, :scale => 12
    t.datetime "created_at",                                                               :null => false
    t.datetime "updated_at",                                                               :null => false
  end

end
