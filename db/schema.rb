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

ActiveRecord::Schema.define(version: 2019_03_13_140230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sku"
    t.integer "price_cents", default: 0, null: false
    t.text "contents"
    t.string "main_image"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.boolean "completed", default: false
    t.text "details"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.index ["user_id"], name: "index_challenges_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.integer "stars"
    t.bigint "user_id"
    t.bigint "box_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["box_id"], name: "index_reviews_on_box_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "delivery_date"
    t.string "duration"
    t.integer "amount_cents", default: 0, null: false
    t.bigint "user_id"
    t.bigint "box_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.string "box_sku"
    t.jsonb "payment"
    t.string "delivery_address"
    t.integer "quantity"
    t.float "latitude"
    t.float "longitude"
    t.index ["box_id"], name: "index_subscriptions_on_box_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "mobile_number"
    t.boolean "has_subscription", default: false
    t.string "date_of_birth"
    t.string "delivery_address"
    t.string "set_goals"
    t.string "profile_picture"
    t.string "gender"
    t.string "age"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "challenges", "users"
  add_foreign_key "reviews", "boxes"
  add_foreign_key "reviews", "users"
  add_foreign_key "subscriptions", "boxes"
  add_foreign_key "subscriptions", "users"
end
