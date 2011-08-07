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

ActiveRecord::Schema.define(:version => 20110806212404) do

  create_table "artists", :force => true do |t|
    t.string   "name_first"
    t.string   "name_last"
    t.string   "instrument"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "concert_id"
  end

  create_table "artists_concerts", :id => false, :force => true do |t|
    t.integer "concert_id"
    t.integer "artist_id"
  end

  create_table "concerts", :force => true do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "repertoire"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id"
  end

  create_table "repertoires", :force => true do |t|
    t.string   "composer"
    t.string   "title"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
