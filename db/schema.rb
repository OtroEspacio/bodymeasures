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

ActiveRecord::Schema.define(version: 20160223033522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "body_measures", force: :cascade do |t|
    t.integer  "customer_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "talla_blusa"
    t.string   "talla_pantalon"
    t.string   "talla_delantero"
    t.string   "talle_trasero"
    t.string   "espalda"
    t.string   "hombro_c_de_busto"
    t.string   "hombro_al_de_busto"
    t.string   "hombro_s_de_busto"
    t.string   "hombro_m_inf_de_busto"
    t.string   "cintura_m_de_cadera"
    t.string   "cintura_l_de_manga_pecho"
    t.string   "cintura_c_de_manga_pecho"
    t.string   "cintura_l_de_m_corta"
    t.string   "cintura_c_de_m_corta"
    t.string   "cintura_l_de_manga_3_4"
    t.string   "cintura_c_de_manga_3_4"
    t.string   "cintura_l_de_blusa"
    t.string   "escote_l_de_rodilla"
    t.string   "escote_c_de_rodilla"
    t.string   "escote_l_de_t"
    t.string   "escote_l_total"
    t.string   "escote_c_de_bota"
    t.text     "nota"
  end

  add_index "body_measures", ["customer_id"], name: "index_body_measures_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_names"
    t.string   "email"
    t.integer  "status"
    t.string   "phone_number"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "customers", ["user_id"], name: "index_customers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "last_names"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "body_measures", "customers"
  add_foreign_key "customers", "users"
end
