# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_01_222248) do

  create_table "keywords", force: :cascade do |t|
    t.string "mood"
    t.integer "user_id"
    t.integer "song_id"
    t.integer "movie_id"
    t.index ["movie_id"], name: "index_keywords_on_movie_id"
    t.index ["song_id"], name: "index_keywords_on_song_id"
    t.index ["user_id"], name: "index_keywords_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.string "mood"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.integer "users_id"
    t.integer "songs_id"
    t.index ["songs_id"], name: "index_playlists_on_songs_id"
    t.index ["users_id"], name: "index_playlists_on_users_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.string "lyrics"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "mood"
  end

end
