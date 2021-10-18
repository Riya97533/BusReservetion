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

ActiveRecord::Schema.define(version: 2021_10_14_115411) do

  create_table "buses", force: :cascade do |t|
    t.string "name"
    t.string "source"
    t.string "destination"
    t.decimal "fare"
    t.text "description"
    t.datetime "start_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "bus_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.decimal "price"
    t.decimal "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bus_id"], name: "index_reservations_on_bus_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "seats", force: :cascade do |t|
    t.integer "seat_no"
    t.integer "bus_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bus_id"], name: "index_seats_on_bus_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "ticket_type"
    t.integer "bus_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bus_id"], name: "index_tickets_on_bus_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.integer "role_id"
    t.string "role"
    t.boolean "busowner", default: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "reservations", "buses"
  add_foreign_key "reservations", "users"
  add_foreign_key "seats", "buses"
  add_foreign_key "tickets", "buses"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "roles"
end
