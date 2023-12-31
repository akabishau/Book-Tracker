ActiveRecord::Schema[7.0].define(version: 20_231_231_204_228) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "google_books_id"
    t.text "authors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
