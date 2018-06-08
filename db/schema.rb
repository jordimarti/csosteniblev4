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

ActiveRecord::Schema.define(version: 2018_06_07_095147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categoria_productes", force: :cascade do |t|
    t.integer "producte_id"
    t.integer "categoria_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_productes", force: :cascade do |t|
    t.integer "producte_id"
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ecoetiqueta_productes", force: :cascade do |t|
    t.integer "producte_id"
    t.integer "ecoetiqueta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ecoetiquetes", force: :cascade do |t|
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empreses", force: :cascade do |t|
    t.string "nom"
    t.string "adreca"
    t.integer "codi_postal"
    t.string "poblacio"
    t.string "telefon"
    t.string "email"
    t.text "web"
    t.text "altres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indicadors", force: :cascade do |t|
    t.integer "tipus_indicador_id"
    t.integer "producte_dapcons_id"
    t.string "etapa"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noticies", force: :cascade do |t|
    t.string "titol_ca"
    t.text "resum_ca"
    t.string "permalink_ca"
    t.text "contingut_ca"
    t.string "titol_es"
    t.text "resum_es"
    t.string "permalink_es"
    t.text "contingut_es"
    t.string "titol_en"
    t.text "resum_en"
    t.string "permalink_en"
    t.text "contingut_en"
    t.datetime "data"
    t.boolean "dapc"
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producte_dapcons", force: :cascade do |t|
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.text "descripcio_ca"
    t.text "descripcio_es"
    t.text "descripcio_en"
    t.string "identificador"
    t.string "rcp_ca"
    t.string "rcp_es"
    t.string "rcp_en"
    t.date "validesa_inici"
    t.date "validesa_fi"
    t.string "empresa"
    t.string "categoria_indicadors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productes", force: :cascade do |t|
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.string "descripcio_ca"
    t.string "descripcio_es"
    t.string "descripcio_en"
    t.text "caracteristiques_ca"
    t.text "caracteristiques_es"
    t.text "caracteristiques_en"
    t.text "aplicacio_ca"
    t.text "aplicacio_es"
    t.text "aplicacio_en"
    t.text "disponibilitat_ca"
    t.text "disponibilitat_es"
    t.text "disponibilitat_en"
    t.text "destacats_ca"
    t.text "destacats_es"
    t.text "destacats_en"
    t.integer "valoracio"
    t.string "ambit"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "empresa_id"
  end

  create_table "tipus_dada_inventaris", force: :cascade do |t|
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.string "unitats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipus_indicadors", force: :cascade do |t|
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.string "unitats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role", default: "user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "titol_ca"
    t.text "resum_ca"
    t.string "permalink_ca"
    t.text "contingut_ca"
    t.string "titol_es"
    t.text "resum_es"
    t.string "permalink_es"
    t.text "contingut_es"
    t.string "titol_en"
    t.text "resum_en"
    t.string "permalink_en"
    t.text "contingut_en"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
