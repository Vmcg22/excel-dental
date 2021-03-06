# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_12_021237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.string "respuesta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.string "respuesta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medical_appointments", force: :cascade do |t|
    t.text "motivo"
    t.datetime "fecha"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_medical_appointments_on_patient_id"
  end

  create_table "medical_files", force: :cascade do |t|
    t.datetime "fecha"
    t.string "foto_expediente"
    t.string "foto_contrato"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "respuesta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.integer "edad"
    t.date "fecha_nacimiento"
    t.string "sexo"
    t.string "colonia"
    t.string "direccion"
    t.string "telefono"
    t.string "celular"
    t.string "apodo"
    t.string "facebook"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "disease_id"
    t.integer "allergy_id"
    t.integer "medicine_id"
    t.integer "substance_id"
  end

  create_table "substances", force: :cascade do |t|
    t.boolean "fuma"
    t.boolean "toma"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "medical_appointments", "patients"
  add_foreign_key "patients", "allergies"
  add_foreign_key "patients", "diseases"
  add_foreign_key "patients", "medicines"
  add_foreign_key "patients", "substances"
  add_foreign_key "patients", "users"
end
