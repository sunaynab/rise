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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20171210005424) do
=======
ActiveRecord::Schema.define(version: 20171210002623) do
>>>>>>> afb4445380b532ef294bb9da9d0672a8311c7935

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incidents", force: :cascade do |t|
    t.string "category"
    t.text "incident_description"
    t.string "location"
    t.datetime "time_of_incident"
    t.string "offender"
    t.string "victim"
    t.text "offender_description"
    t.text "victim_description"
    t.boolean "confidential"
    t.string "status"
    t.string "evidence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["status"], name: "index_incidents_on_status"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "session_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "grade", null: false
    t.string "gender", null: false
  end

end
