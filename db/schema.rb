ActiveRecord::Schema[7.1].define(version: 2024_02_22_114357) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.text "comment"
    t.bigint "movie_id", null: false
    t.bigint "list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_bookmarks_on_list_id"
    t.index ["movie_id"], name: "index_bookmarks_on_movie_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "overview"
    t.integer "rating"
    t.string "poster_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookmarks", "lists"
  add_foreign_key "bookmarks", "movies"
end
