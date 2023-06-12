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

ActiveRecord::Schema.define(version: 2023_06_12_041524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.string "classfication"
    t.string "name"
    t.string "japanese_name"
    t.integer "base_total"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "special_attack"
    t.integer "special_defense"
    t.integer "speed"
    t.string "type1"
    t.string "type2"
    t.string "abilities", default: [], array: true
    t.decimal "against_bug"
    t.decimal "against_dark"
    t.decimal "against_dragon"
    t.decimal "against_electric"
    t.decimal "against_fairy"
    t.decimal "against_fight"
    t.decimal "against_fire"
    t.decimal "against_flying"
    t.decimal "against_ghost"
    t.decimal "against_grass"
    t.decimal "against_ground"
    t.decimal "against_ice"
    t.decimal "against_normal"
    t.decimal "against_poison"
    t.decimal "against_psychic"
    t.decimal "against_rock"
    t.decimal "against_steel"
    t.decimal "against_water"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
