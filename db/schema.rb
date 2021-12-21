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

ActiveRecord::Schema.define(version: 2021_12_21_140228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "payments", force: :cascade do |t|
    t.integer "monto_pago"
    t.integer "saldo_acum"
    t.date "fecha_pago"
    t.integer "total_pago"
    t.string "medio_pago"
    t.bigint "profile_id", null: false
    t.string "motivo"
    t.string "mes_cuota"
    t.integer "anio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_payments_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido1"
    t.string "apellido2"
    t.string "telefono"
    t.integer "cuota"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.date "inicio_votacion"
    t.date "cierre_votacion"
    t.string "imagen"
    t.integer "votos_positivos"
    t.integer "votos_negativos"
    t.string "resultado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "tipo"
    t.bigint "profile_id", null: false
    t.string "nombre_calle"
    t.string "numero_calle"
    t.string "comuna"
    t.string "ciudad"
    t.string "region"
    t.integer "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_units_on_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "payments", "profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "units", "profiles"
end
