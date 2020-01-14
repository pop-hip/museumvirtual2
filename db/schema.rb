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

ActiveRecord::Schema.define(version: 2020_01_10_152336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_types", force: :cascade do |t|
    t.string "title"
    t.string "date"
    t.string "author"
    t.string "interpreter"
    t.string "dimention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "emotion_id"
    t.string "link"
    t.index ["emotion_id"], name: "index_art_types_on_emotion_id"
  end

  create_table "emotions", force: :cascade do |t|
    t.string "titre"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "art_types", "emotions"
end
