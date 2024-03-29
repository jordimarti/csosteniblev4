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

ActiveRecord::Schema.define(version: 2022_11_16_090548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
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

  create_table "cas_practics", force: :cascade do |t|
    t.string "titol_ca"
    t.text "resum_ca"
    t.string "permalink_ca"
    t.text "descripcio_ca"
    t.string "emplacament_ca"
    t.text "arquitectura_ca"
    t.text "materials_ca"
    t.text "energia_ca"
    t.text "aigua_ca"
    t.text "certificacions_ca"
    t.text "arquitectes_ca"
    t.string "any_construccio_ca"
    t.string "us_edifici_ca"
    t.string "tipus_promocio_ca"
    t.string "titol_es"
    t.text "resum_es"
    t.string "permalink_es"
    t.text "descripcio_es"
    t.string "emplacament_es"
    t.text "arquitectura_es"
    t.text "materials_es"
    t.text "energia_es"
    t.text "aigua_es"
    t.text "certificacions_es"
    t.text "arquitectes_es"
    t.string "any_construccio_es"
    t.string "us_edifici_es"
    t.string "tipus_promocio_es"
    t.string "titol_en"
    t.text "resum_en"
    t.string "permalink_en"
    t.text "descripcio_en"
    t.string "emplacament_en"
    t.text "arquitectura_en"
    t.text "materials_en"
    t.text "energia_en"
    t.text "aigua_en"
    t.text "certificacions_en"
    t.text "arquitectes_en"
    t.string "any_construccio_en"
    t.string "us_edifici_en"
    t.string "tipus_promocio_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible"
    t.text "text_imatge_cas_principal_ca"
    t.text "text_imatge_cas_1_ca"
    t.text "text_imatge_cas_2_ca"
    t.text "text_imatge_cas_3_ca"
    t.text "text_imatge_cas_4_ca"
    t.text "text_imatge_cas_principal_es"
    t.text "text_imatge_cas_1_es"
    t.text "text_imatge_cas_2_es"
    t.text "text_imatge_cas_3_es"
    t.text "text_imatge_cas_4_es"
    t.text "text_imatge_cas_principal_en"
    t.text "text_imatge_cas_1_en"
    t.text "text_imatge_cas_2_en"
    t.text "text_imatge_cas_3_en"
    t.text "text_imatge_cas_4_en"
    t.integer "user_id"
    t.string "video_url"
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

  create_table "document_dapcons", force: :cascade do |t|
    t.integer "producte_dapcons_id"
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.string "idioma"
    t.string "link"
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

  create_table "epd_indicators", force: :cascade do |t|
    t.uuid "epd_id"
    t.string "indicator"
    t.string "unit"
    t.float "a1_a3"
    t.float "a4"
    t.float "a5"
    t.float "b1"
    t.float "b2"
    t.float "b3"
    t.float "b4"
    t.float "b5"
    t.float "b6"
    t.float "b7"
    t.float "c1"
    t.float "c2"
    t.float "c3"
    t.float "c4"
    t.float "d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "epds", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.text "general_comment"
    t.string "data_set_lca_report"
    t.decimal "generic_data_uncertaintiy_loads"
    t.text "description_generic_data_uncertainty_loads"
    t.string "scenario_name"
    t.boolean "scenario_default"
    t.string "scenario_group"
    t.text "scenario_description"
    t.string "module_name"
    t.integer "module_product_system_id"
    t.string "reference_flow"
    t.string "functional_unit"
    t.integer "reference_year"
    t.integer "data_set_valid_until"
    t.text "time_representativeness_description"
    t.string "location"
    t.text "geographical_representativeness_description"
    t.text "technology_description"
    t.text "technical_purpose_of_product"
    t.string "pictogram_of_technology"
    t.string "flow_diagram_picture"
    t.string "lca_methodology_report"
    t.text "subtype"
    t.string "data_sources"
    t.text "use_advise_for_data_set"
    t.text "type_of_review"
    t.text "review_details"
    t.string "reviewer_name"
    t.string "complete_review_report"
    t.string "compliance_system_name"
    t.string "data_set_format"
    t.string "data_entry_by"
    t.date "date_of_last_revision"
    t.string "issuer"
    t.string "registration_number"
    t.string "owner_of_data_set"
    t.boolean "copyright"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indicador_usuaris", force: :cascade do |t|
    t.integer "tipus_indicador_id"
    t.integer "producte_dapcons_usuari_id"
    t.string "etapa"
    t.float "valor"
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

  create_table "interaccions", force: :cascade do |t|
    t.string "nom"
    t.string "categoria"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "user_email"
    t.string "user_first_name"
    t.string "user_last_name"
    t.integer "producte_dapcons_id"
    t.integer "producte_dapcons_user_id"
  end

  create_table "mk_categories", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "valida"
    t.string "nom_ca"
    t.string "nom_es"
    t.string "nom_en"
    t.integer "pare"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unitats"
    t.integer "ordre"
  end

  create_table "mk_documents", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mk_product_id"
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mk_imatges", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mk_product_id"
    t.string "descripcio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mk_missatges", force: :cascade do |t|
    t.integer "user_id"
    t.string "destinatari"
    t.text "missatge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mk_product_id"
    t.boolean "mobile"
  end

  create_table "mk_products", force: :cascade do |t|
    t.integer "user_id"
    t.string "nom"
    t.text "descripcio"
    t.string "categoria"
    t.string "adreca"
    t.string "codi_postal"
    t.string "municipi"
    t.decimal "latitud"
    t.decimal "longitud"
    t.integer "preu"
    t.boolean "visible"
    t.boolean "venut"
    t.boolean "aprovat"
    t.decimal "pes"
    t.integer "unitats"
    t.string "enviament"
    t.boolean "adreca_oculta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "reservat"
    t.integer "reservat_usuari"
    t.boolean "mobile"
  end

  create_table "mk_puntuacions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mk_user_id"
    t.decimal "puntuacio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mk_users", force: :cascade do |t|
    t.integer "user_id"
    t.string "nom"
    t.string "cognoms"
    t.string "adreca"
    t.string "codi_postal"
    t.string "municipi"
    t.string "email"
    t.string "telefon"
    t.string "web"
    t.boolean "mostrar_adreca"
    t.boolean "mostrar_email"
    t.boolean "mostrar_telefon"
    t.boolean "mostrar_web"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "mobile"
    t.boolean "primer_us"
    t.decimal "puntuacio"
    t.boolean "app_primera_vegada", default: true
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

  create_table "organitzacio_afiliades", force: :cascade do |t|
    t.string "numero_membre"
    t.string "nom"
    t.text "dades"
    t.string "link_iso"
    t.string "tipus"
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
    t.text "unitat_declarada_ca"
    t.text "unitat_declarada_es"
    t.text "unitat_declarada_en"
    t.integer "user_id"
  end

  create_table "producte_dapcons_usuaris", force: :cascade do |t|
    t.string "nom"
    t.string "empresa"
    t.text "descripcio"
    t.text "unitat_declarada"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
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
    t.text "descripcio_ca"
    t.text "descripcio_es"
    t.text "descripcio_en"
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
