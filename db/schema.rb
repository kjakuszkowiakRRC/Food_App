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

ActiveRecord::Schema.define(version: 2021_10_20_225454) do

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "province"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurant_locations", force: :cascade do |t|
    t.integer "restaurants_id", null: false
    t.integer "locations_id", null: false
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["locations_id"], name: "index_restaurant_locations_on_locations_id"
    t.index ["restaurants_id"], name: "index_restaurant_locations_on_restaurants_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "cuisine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "restaurant_locations", "locations", column: "locations_id"
  add_foreign_key "restaurant_locations", "restaurants", column: "restaurants_id"
end
