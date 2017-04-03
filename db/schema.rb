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

ActiveRecord::Schema.define(version: 20170327120319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donation_activities", force: :cascade do |t|
    t.integer  "people_id"
    t.float    "amount"
    t.string   "currency"
    t.integer  "project_id"
    t.date     "thank_you_sent"
    t.integer  "donation_platform_id"
    t.date     "receipt_sent"
    t.text     "comments"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["donation_platform_id"], name: "index_donation_activities_on_donation_platform_id", using: :btree
    t.index ["people_id"], name: "index_donation_activities_on_people_id", using: :btree
    t.index ["project_id"], name: "index_donation_activities_on_project_id", using: :btree
  end

  create_table "donation_platforms", force: :cascade do |t|
    t.string "donation_platform_name"
  end

  create_table "expense_activities", force: :cascade do |t|
    t.float    "gross_amount"
    t.integer  "payment_type_id"
    t.text     "item_description"
    t.integer  "issuing_person"
    t.integer  "receiving_person"
    t.string   "location"
    t.date     "receipt_received_or_issued"
    t.string   "platform"
    t.text     "comments"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["issuing_person"], name: "index_expense_activities_on_issuing_person", using: :btree
    t.index ["payment_type_id"], name: "index_expense_activities_on_payment_type_id", using: :btree
    t.index ["receiving_person"], name: "index_expense_activities_on_receiving_person", using: :btree
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "payment_type_name"
  end

  create_table "people", force: :cascade do |t|
    t.integer "role_id"
    t.string  "title"
    t.string  "first_name"
    t.string  "middle_name"
    t.string  "last_name"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "country"
    t.string  "phone"
    t.string  "email"
    t.string  "company"
    t.string  "date_of_first_contact"
    t.text    "comments"
    t.index ["role_id"], name: "index_people_on_role_id", using: :btree
  end

  create_table "project_types", force: :cascade do |t|
    t.string "project_type"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "project_type_id"
    t.string   "title"
    t.integer  "total_participants"
    t.float    "amount_raised"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "country"
    t.text     "description"
    t.string   "organizer"
    t.text     "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["project_type_id"], name: "index_projects_on_project_type_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string  "email"
    t.string  "subscription_info"
    t.boolean "subscribed"
  end

end
