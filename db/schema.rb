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

ActiveRecord::Schema.define(version: 20170224173554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sbt_customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address_register"
    t.string   "address_destiny"
    t.string   "agreement"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sbt_invoices", force: :cascade do |t|
    t.string   "invoice_number"
    t.integer  "sbt_customer_id"
    t.datetime "date_issue"
    t.integer  "sbt_waybill_id"
    t.decimal  "total_sum",       precision: 10, scale: 2
    t.decimal  "total_tax10_sum", precision: 10, scale: 2
    t.decimal  "total_tax20_sum", precision: 10, scale: 2
    t.datetime "due_date"
    t.boolean  "paid",                                     default: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  add_index "sbt_invoices", ["sbt_customer_id"], name: "index_sbt_invoices_on_sbt_customer_id", using: :btree
  add_index "sbt_invoices", ["sbt_waybill_id"], name: "index_sbt_invoices_on_sbt_waybill_id", using: :btree

  create_table "sbt_order_items", force: :cascade do |t|
    t.integer  "sbt_order_id"
    t.integer  "sbt_product_id"
    t.decimal  "amount",         precision: 10, scale: 3
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "sbt_order_items", ["sbt_order_id"], name: "index_sbt_order_items_on_sbt_order_id", using: :btree
  add_index "sbt_order_items", ["sbt_product_id"], name: "index_sbt_order_items_on_sbt_product_id", using: :btree

  create_table "sbt_orders", force: :cascade do |t|
    t.integer  "number"
    t.datetime "date_order"
    t.integer  "sbt_order_items_count"
    t.integer  "sbt_customer_id"
    t.string   "tel_contact"
    t.datetime "date_due"
    t.integer  "status",                default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "sbt_orders", ["sbt_customer_id"], name: "index_sbt_orders_on_sbt_customer_id", using: :btree

  create_table "sbt_products", force: :cascade do |t|
    t.string   "article"
    t.string   "name"
    t.decimal  "price",       precision: 10, scale: 2
    t.integer  "sbt_unit_id"
    t.integer  "tax_rate"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "sbt_products", ["sbt_unit_id"], name: "index_sbt_products_on_sbt_unit_id", using: :btree

  create_table "sbt_units", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sbt_waybill_items", force: :cascade do |t|
    t.integer  "num_line"
    t.integer  "sbt_waybill_id"
    t.decimal  "amount",         precision: 10, scale: 3
    t.decimal  "amount_order",   precision: 10, scale: 3
    t.decimal  "amount_delta",   precision: 10, scale: 3
    t.integer  "sbt_product_id"
    t.decimal  "price",          precision: 10, scale: 2
    t.integer  "tax_rate",                                default: 0
    t.decimal  "total_sum",      precision: 10, scale: 2
    t.decimal  "total_tax_sum",  precision: 10, scale: 2
    t.decimal  "grandtotal_sum", precision: 10, scale: 2
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "sbt_waybill_items", ["sbt_product_id"], name: "index_sbt_waybill_items_on_sbt_product_id", using: :btree
  add_index "sbt_waybill_items", ["sbt_waybill_id"], name: "index_sbt_waybill_items_on_sbt_waybill_id", using: :btree

  create_table "sbt_waybills", force: :cascade do |t|
    t.string   "num_ttn"
    t.integer  "sbt_customer_id"
    t.integer  "sbt_order_id"
    t.datetime "date_issue"
    t.integer  "sbt_waybill_items_count"
    t.decimal  "total_sum",               precision: 10, scale: 2
    t.decimal  "total_tax10_sum",         precision: 10, scale: 2
    t.decimal  "total_tax20_sum",         precision: 10, scale: 2
    t.string   "auto_num"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "sbt_waybills", ["sbt_customer_id"], name: "index_sbt_waybills_on_sbt_customer_id", using: :btree
  add_index "sbt_waybills", ["sbt_order_id"], name: "index_sbt_waybills_on_sbt_order_id", using: :btree

end
