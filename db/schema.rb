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

ActiveRecord::Schema.define(version: 20131209040616) do

  create_table "company_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "country_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "domains", force: true do |t|
    t.string   "domain_name"
    t.string   "nameserver_first"
    t.string   "nameserver_second"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "whois_contacts", force: true do |t|
    t.integer  "domain_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "number"
    t.string   "postal_code"
    t.string   "city"
    t.integer  "country_id"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "company_name"
    t.integer  "company_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "whois_contacts", ["company_type_id"], name: "index_whois_contacts_on_company_type_id"
  add_index "whois_contacts", ["country_id"], name: "index_whois_contacts_on_country_id"
  add_index "whois_contacts", ["domain_id"], name: "index_whois_contacts_on_domain_id"

end
