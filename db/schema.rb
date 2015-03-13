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

ActiveRecord::Schema.define(version: 20150213073242) do

  create_table "comable_addresses", force: true do |t|
    t.integer  "customer_id"
    t.string   "family_name",             null: false
    t.string   "first_name",              null: false
    t.string   "zip_code",     limit: 8,  null: false
    t.integer  "state_id"
    t.string   "state_name",              null: false
    t.string   "city",                    null: false
    t.string   "detail"
    t.string   "phone_number", limit: 18, null: false
    t.datetime "last_used_at"
  end

  create_table "comable_categories", force: true do |t|
    t.string  "name",     null: false
    t.string  "ancestry"
    t.integer "position"
  end

  create_table "comable_customers", force: true do |t|
    t.string   "email",                              null: false
    t.string   "role",                               null: false
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "bill_address_id"
    t.integer  "ship_address_id"
  end

  add_index "comable_customers", ["email"], name: "index_comable_customers_on_email", unique: true
  add_index "comable_customers", ["reset_password_token"], name: "index_comable_customers_on_reset_password_token", unique: true

  create_table "comable_images", force: true do |t|
    t.integer "product_id", null: false
    t.string  "file",       null: false
  end

  add_index "comable_images", ["product_id"], name: "index_comable_images_on_product_id"

  create_table "comable_order_details", force: true do |t|
    t.integer "order_id",                      null: false
    t.integer "stock_id",                      null: false
    t.string  "name",                          null: false
    t.string  "code",                          null: false
    t.integer "price",                         null: false
    t.string  "sku_h_item_name"
    t.string  "sku_v_item_name"
    t.string  "sku_h_choice_name"
    t.string  "sku_v_choice_name"
    t.integer "quantity",          default: 1, null: false
  end

  add_index "comable_order_details", ["order_id", "stock_id"], name: "comable_order_details_idx_01", unique: true

  create_table "comable_orders", force: true do |t|
    t.integer  "customer_id"
    t.string   "guest_token"
    t.string   "code"
    t.string   "email"
    t.integer  "shipment_fee",             default: 0, null: false
    t.string   "shipment_tracking_number"
    t.integer  "shipment_method_id"
    t.integer  "payment_method_id"
    t.integer  "total_price"
    t.integer  "bill_address_id"
    t.integer  "ship_address_id"
    t.string   "state"
    t.datetime "completed_at"
  end

  add_index "comable_orders", ["code"], name: "comable_orders_idx_01", unique: true

  create_table "comable_payment_methods", force: true do |t|
    t.string  "name",                  null: false
    t.string  "payment_provider_type", null: false
    t.integer "payment_provider_kind", null: false
    t.integer "enable_price_from"
    t.integer "enable_price_to"
  end

  create_table "comable_products", force: true do |t|
    t.string  "name",            null: false
    t.string  "code",            null: false
    t.integer "price",           null: false
    t.text    "caption"
    t.string  "sku_h_item_name"
    t.string  "sku_v_item_name"
  end

  add_index "comable_products", ["code"], name: "comable_products_idx_01", unique: true

  create_table "comable_products_categories", force: true do |t|
    t.integer "product_id",  null: false
    t.integer "category_id", null: false
  end

  add_index "comable_products_categories", ["category_id"], name: "index_comable_products_categories_on_category_id"
  add_index "comable_products_categories", ["product_id"], name: "index_comable_products_categories_on_product_id"

  create_table "comable_shipment_methods", force: true do |t|
    t.boolean "activate_flag", default: true, null: false
    t.string  "name",                         null: false
    t.integer "fee",                          null: false
    t.string  "traking_url"
  end

  create_table "comable_stocks", force: true do |t|
    t.integer "product_id",                    null: false
    t.string  "code",                          null: false
    t.integer "quantity",          default: 0, null: false
    t.string  "sku_h_choice_name"
    t.string  "sku_v_choice_name"
  end

  add_index "comable_stocks", ["code"], name: "comable_stocks_idx_01", unique: true

  create_table "comable_stores", force: true do |t|
    t.string  "name"
    t.string  "meta_keywords"
    t.string  "meta_description"
    t.string  "email_sender"
    t.boolean "email_activate_flag", default: true, null: false
  end

end
