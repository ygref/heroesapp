# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_19_160552) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "character_name"
    t.string "character_role"
    t.string "role_tier"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "playername"
    t.string "player_role1"
    t.string "player_role2"
    t.string "player_role3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players_characters", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_players_characters_on_character_id"
    t.index ["player_id"], name: "index_players_characters_on_player_id"
  end

  add_foreign_key "players_characters", "characters"
  add_foreign_key "players_characters", "players"
end
