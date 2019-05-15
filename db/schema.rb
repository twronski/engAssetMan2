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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_15_201417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "borrows", force: :cascade do |t|
    t.bigint "equipment_id"
    t.bigint "user_id"
    t.datetime "request_start_date"
    t.datetime "request_return_date"
    t.datetime "start_date"
    t.datetime "return_date"
    t.integer "status"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_borrows_on_equipment_id"
    t.index ["user_id"], name: "index_borrows_on_user_id"
  end

  create_table "eqpt_functions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "lower((name)::text)", name: "function_lower_name_idx", unique: true
  end

  create_table "eqpt_models", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "lower((name)::text)", name: "model_lower_name_idx", unique: true
  end

  create_table "eqpt_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "lower((name)::text)", name: "type_lower_name_idx", unique: true
  end

  create_table "equipment", force: :cascade do |t|
    t.bigint "eqpt_type_id"
    t.bigint "eqpt_model_id"
    t.bigint "eqpt_function_id"
    t.string "order_code", limit: 50
    t.string "serial_number", limit: 50
    t.string "lab_location", limit: 50
    t.string "manuf_password", limit: 50
    t.string "photo"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asset_number"
    t.date "calibration_expiration"
    t.integer "is_available_for_borrow"
    t.integer "is_inspected"
    t.integer "has_display"
    t.string "qr_url"
    t.integer "qty_total"
    t.integer "qty_available_for_borrow"
    t.integer "qty_borrowed"
    t.integer "qty_balance"
    t.index ["eqpt_function_id"], name: "index_equipment_on_eqpt_function_id"
    t.index ["eqpt_model_id"], name: "index_equipment_on_eqpt_model_id"
    t.index ["eqpt_type_id"], name: "index_equipment_on_eqpt_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "borrows", "equipment"
  add_foreign_key "borrows", "users"
  add_foreign_key "equipment", "eqpt_functions"
  add_foreign_key "equipment", "eqpt_models"
  add_foreign_key "equipment", "eqpt_types"
end
