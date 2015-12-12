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

ActiveRecord::Schema.define(version: 20151212110507) do

  create_table "probs", force: :cascade do |t|
    t.string   "pname"
    t.text     "pstatement"
    t.integer  "pid"
    t.date     "pdate"
    t.string   "person"
    t.integer  "votes"
    t.integer  "rateing"
    t.integer  "points"
    t.string   "tag"
    t.string   "probstatus"
    t.integer  "emp"
    t.integer  "sym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solns", force: :cascade do |t|
    t.string   "solnname"
    t.text     "solntext"
    t.string   "solnauthor", default: "Senthil"
    t.integer  "solnid"
    t.date     "solndate"
    t.integer  "prob_id"
    t.integer  "solnvotes"
    t.integer  "solnrating"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "solns", ["prob_id"], name: "index_solns_on_prob_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vprobs", force: :cascade do |t|
    t.string   "pvname"
    t.text     "pversion"
    t.string   "pvauthor",   default: "Doe"
    t.integer  "pvid"
    t.date     "pvdate"
    t.integer  "pvinteger"
    t.integer  "prob_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "vprobs", ["prob_id"], name: "index_vprobs_on_prob_id"

end
