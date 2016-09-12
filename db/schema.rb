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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 0) do
=======
ActiveRecord::Schema.define(version: 20160910173623) do
>>>>>>> ae3fc6f53181162f6df178db15025960067d8d08

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
=======
  create_table "channels", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.bigint   "vimeo_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "description"
    t.bigint   "vimeo_id",    null: false
    t.integer  "channel_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["channel_id"], name: "index_videos_on_channel_id", using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "video_id"
    t.boolean  "upvote",     default: true, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["video_id"], name: "index_votes_on_video_id", using: :btree
  end

>>>>>>> ae3fc6f53181162f6df178db15025960067d8d08
end
