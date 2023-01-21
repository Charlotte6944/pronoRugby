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

ActiveRecord::Schema.define(version: 2023_01_21_204439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipes", force: :cascade do |t|
    t.string "pays"
    t.string "poule"
    t.integer "nb_points_poule"
    t.integer "classement_poule"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string "phase"
    t.bigint "equipe1_id", null: false
    t.bigint "equipe2_id", null: false
    t.date "date"
    t.time "heure"
    t.integer "score_equipe1"
    t.integer "score_equipe2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipe1_id"], name: "index_matches_on_equipe1_id"
    t.index ["equipe2_id"], name: "index_matches_on_equipe2_id"
  end

  add_foreign_key "matches", "equipes", column: "equipe1_id"
  add_foreign_key "matches", "equipes", column: "equipe2_id"
end
