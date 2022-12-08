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

ActiveRecord::Schema[7.0].define(version: 2022_12_08_195454) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "number_of_tickets", null: false
    t.float "amount_paid", null: false
    t.string "stripe_transaction_id", null: false
    t.bigint "customer_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "order_number"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["event_id"], name: "index_bookings_on_event_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "email", null: false
    t.string "contact_number", null: false
    t.string "stripe_customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.string "start_time", null: false
    t.string "end_time", null: false
    t.integer "total_sits", null: false
    t.integer "remaining_sits", null: false
    t.bigint "entrance_fee", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_events_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "refunds", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "booking_id", null: false
    t.integer "number_of_tickets"
    t.string "state"
    t.string "stripe_refund_id"
    t.boolean "is_partial_refund"
    t.float "amount_refunded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_refunds_on_booking_id"
    t.index ["customer_id"], name: "index_refunds_on_customer_id"
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "events"
  add_foreign_key "refunds", "bookings"
  add_foreign_key "refunds", "customers"
end
