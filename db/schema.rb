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

ActiveRecord::Schema.define(version: 2023_02_06_165844) do

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

  create_table "joueurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nom"
    t.integer "nb_points", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_joueurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_joueurs_on_reset_password_token", unique: true
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
    t.integer "essais_equipe1", default: 0
    t.integer "essais_equipe2", default: 0
    t.index ["equipe1_id"], name: "index_matches_on_equipe1_id"
    t.index ["equipe2_id"], name: "index_matches_on_equipe2_id"
  end

  create_table "paris", force: :cascade do |t|
    t.bigint "match_id", null: false
    t.bigint "joueur_id", null: false
    t.boolean "vainqueur_equipe1"
    t.boolean "vainqueur_equipe2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["joueur_id"], name: "index_paris_on_joueur_id"
    t.index ["match_id"], name: "index_paris_on_match_id"
  end

  add_foreign_key "matches", "equipes", column: "equipe1_id"
  add_foreign_key "matches", "equipes", column: "equipe2_id"
  add_foreign_key "paris", "joueurs"
  add_foreign_key "paris", "matches"
end
