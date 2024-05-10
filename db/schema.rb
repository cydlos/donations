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

ActiveRecord::Schema[7.0].define(version: 2024_05_09_223015) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conexaos", force: :cascade do |t|
    t.bigint "vitima_id", null: false
    t.bigint "doador_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doador_id"], name: "index_conexaos_on_doador_id"
    t.index ["vitima_id"], name: "index_conexaos_on_vitima_id"
  end

  create_table "doadors", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "endereco"
    t.text "ofertas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vitimas", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "endereco"
    t.text "necessidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "conexaos", "doadors"
  add_foreign_key "conexaos", "vitimas"
end
