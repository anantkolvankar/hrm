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

ActiveRecord::Schema.define(version: 20150526193504) do

  create_table "branches", force: true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branches", ["company_id"], name: "index_branches_on_company_id", using: :btree

  create_table "candidates", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone"
    t.text     "address"
    t.text     "address2"
    t.string   "city"
    t.integer  "postal_code"
    t.string   "state"
    t.string   "country"
    t.integer  "current_company_id"
    t.integer  "current_branch_id"
    t.integer  "industry_id"
    t.string   "job_title"
    t.integer  "current_level_id"
    t.string   "current_package"
    t.integer  "previous_company_id"
    t.integer  "previous_branch_id"
    t.integer  "previous_industry_id"
    t.string   "previous_job_title"
    t.integer  "previous_level_id"
    t.string   "previous_package"
    t.text     "reason"
    t.string   "proof"
    t.string   "candidate_type"
    t.string   "linked_in"
    t.string   "resume"
    t.integer  "uploaded_id"
    t.string   "uploaded_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "candidates", ["current_branch_id"], name: "index_candidates_on_current_branch_id", using: :btree
  add_index "candidates", ["current_company_id"], name: "index_candidates_on_current_company_id", using: :btree
  add_index "candidates", ["current_level_id"], name: "index_candidates_on_current_level_id", using: :btree
  add_index "candidates", ["industry_id"], name: "index_candidates_on_industry_id", using: :btree
  add_index "candidates", ["previous_branch_id"], name: "index_candidates_on_previous_branch_id", using: :btree
  add_index "candidates", ["previous_company_id"], name: "index_candidates_on_previous_company_id", using: :btree
  add_index "candidates", ["previous_industry_id"], name: "index_candidates_on_previous_industry_id", using: :btree
  add_index "candidates", ["previous_level_id"], name: "index_candidates_on_previous_level_id", using: :btree
  add_index "candidates", ["uploaded_id", "uploaded_type"], name: "index_candidates_on_uploaded_id_and_uploaded_type", using: :btree

  create_table "companies", force: true do |t|
    t.string   "website"
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.text     "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.integer  "employee_strength"
    t.string   "revenue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultants", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "company_name"
    t.string   "contact_person"
    t.string   "designation"
    t.string   "phone_no"
    t.string   "address"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "point",                  default: 20
  end

  add_index "consultants", ["email"], name: "index_consultants_on_email", unique: true, using: :btree
  add_index "consultants", ["reset_password_token"], name: "index_consultants_on_reset_password_token", unique: true, using: :btree

  create_table "corporates", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "company_name"
    t.string   "contact_person"
    t.string   "designation"
    t.string   "phone_no"
    t.string   "address"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "point",                  default: 20
  end

  add_index "corporates", ["email"], name: "index_corporates_on_email", unique: true, using: :btree
  add_index "corporates", ["reset_password_token"], name: "index_corporates_on_reset_password_token", unique: true, using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "industries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
