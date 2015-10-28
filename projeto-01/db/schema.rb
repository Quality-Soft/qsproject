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

ActiveRecord::Schema.define(version: 20151025202716) do

  create_table "acts", force: :cascade do |t|
    t.integer  "mei_id"
    t.integer  "ocupation_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "acts", ["mei_id"], name: "index_acts_on_mei_id"
  add_index "acts", ["ocupation_id"], name: "index_acts_on_ocupation_id"

  create_table "business_addresses", force: :cascade do |t|
    t.string   "rua"
    t.string   "bairro"
    t.string   "cidade"
    t.integer  "mei_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "business_addresses", ["mei_id"], name: "index_business_addresses_on_mei_id"

  create_table "comentarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "titulo"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "description"
    t.integer  "mei_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "comments", ["mei_id"], name: "index_comments_on_mei_id"

  create_table "evaluations", force: :cascade do |t|
    t.integer  "mei_id"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "evaluations", ["mei_id"], name: "index_evaluations_on_mei_id"

  create_table "home_addresses", force: :cascade do |t|
    t.string   "rua"
    t.string   "bairro"
    t.string   "cidade"
    t.integer  "mei_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "home_addresses", ["mei_id"], name: "index_home_addresses_on_mei_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meis", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "razao_social"
    t.string   "cpf"
    t.string   "rg"
    t.string   "nome"
    t.string   "sexo"
    t.string   "descricao_atividade"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "occupations", force: :cascade do |t|
    t.string   "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "number"
    t.integer  "mei_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phone_numbers", ["mei_id"], name: "index_phone_numbers_on_mei_id"

  create_table "testes", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.integer  "mei_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "works", ["job_id"], name: "index_works_on_job_id"
  add_index "works", ["mei_id"], name: "index_works_on_mei_id"

end
