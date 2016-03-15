# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160315200709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "town"
    t.integer  "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "client_id"
    t.integer  "service_id"
  end

  add_index "addresses", ["client_id"], name: "index_addresses_on_client_id", using: :btree
  add_index "addresses", ["service_id"], name: "index_addresses_on_service_id", using: :btree

  create_table "claims", force: :cascade do |t|
    t.integer  "operator_id"
    t.integer  "client_id"
    t.integer  "service_id"
    t.integer  "location_id"
    t.boolean  "valid",         null: false
    t.integer  "serviceman_id"
    t.boolean  "closed",        null: false
    t.integer  "status_id"
    t.text     "description",   null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "claims", ["client_id"], name: "index_claims_on_client_id", using: :btree
  add_index "claims", ["location_id"], name: "index_claims_on_location_id", using: :btree
  add_index "claims", ["operator_id"], name: "index_claims_on_operator_id", using: :btree
  add_index "claims", ["service_id"], name: "index_claims_on_service_id", using: :btree
  add_index "claims", ["serviceman_id"], name: "index_claims_on_serviceman_id", using: :btree
  add_index "claims", ["status_id"], name: "index_claims_on_status_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicemen", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.integer  "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "servicemen", ["service_id"], name: "index_servicemen_on_service_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transport_services", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.integer  "operator_id"
    t.integer  "client_id"
  end

  add_index "users", ["client_id"], name: "index_users_on_client_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["operator_id"], name: "index_users_on_operator_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "waybills", force: :cascade do |t|
    t.integer  "transport_service_id", null: false
    t.string   "number"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "waybills", ["transport_service_id"], name: "index_waybills_on_transport_service_id", using: :btree

  add_foreign_key "addresses", "clients"
  add_foreign_key "addresses", "services"
  add_foreign_key "claims", "clients"
  add_foreign_key "claims", "locations"
  add_foreign_key "claims", "operators"
  add_foreign_key "claims", "servicemen"
  add_foreign_key "claims", "services"
  add_foreign_key "claims", "statuses"
  add_foreign_key "comments", "users"
  add_foreign_key "servicemen", "services"
  add_foreign_key "users", "clients"
  add_foreign_key "users", "operators"
  add_foreign_key "waybills", "transport_services"
end
