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

ActiveRecord::Schema.define(version: 20170601055851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carbon_dioxides", force: :cascade do |t|
    t.float    "dataDioxide"
    t.integer  "node_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["node_id"], name: "index_carbon_dioxides_on_node_id", using: :btree
  end

  create_table "carbon_monoxides", force: :cascade do |t|
    t.float    "dataMonoxide"
    t.integer  "node_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["node_id"], name: "index_carbon_monoxides_on_node_id", using: :btree
  end

  create_table "dusts", force: :cascade do |t|
    t.float    "dataDust"
    t.integer  "node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_dusts_on_node_id", using: :btree
  end

  create_table "humidities", force: :cascade do |t|
    t.float    "dataHumidity"
    t.integer  "node_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["node_id"], name: "index_humidities_on_node_id", using: :btree
  end

  create_table "nitrogens", force: :cascade do |t|
    t.float    "dataNitrogen"
    t.integer  "node_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["node_id"], name: "index_nitrogens_on_node_id", using: :btree
  end

  create_table "nodes", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.float    "data"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  create_table "ozones", force: :cascade do |t|
    t.float    "dataOzone"
    t.integer  "node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_ozones_on_node_id", using: :btree
  end

  create_table "temperatures", force: :cascade do |t|
    t.float    "dateTemperature"
    t.integer  "node_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["node_id"], name: "index_temperatures_on_node_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "usuario",                default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["usuario"], name: "index_users_on_usuario", unique: true, using: :btree
  end

  add_foreign_key "carbon_dioxides", "nodes"
  add_foreign_key "carbon_monoxides", "nodes"
<<<<<<< HEAD
  add_foreign_key "carbons", "nodes"
=======
  add_foreign_key "dusts", "nodes"
>>>>>>> 6cc65c3a894d67719f56c0f36258db6c2f2d194b
  add_foreign_key "humidities", "nodes"
  add_foreign_key "nitrogens", "nodes"
  add_foreign_key "ozones", "nodes"
  add_foreign_key "temperatures", "nodes"
end
