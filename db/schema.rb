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

ActiveRecord::Schema.define(version: 2021_06_09_132647) do

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "Title"
    t.string "Email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "BuildingType"
    t.integer "NumberOfFloors"
    t.integer "NumberOfBasements"
    t.integer "NumberOfcompanies"
    t.integer "NumberOfParkingSpots"
    t.integer "NumberOfElevators"
    t.integer "NumberOfApartments"
    t.integer "NumberOfCorporations"
    t.integer "NumberOfOccupany"
    t.integer "NumberOfBusinessHours"
    t.integer "ElevatorAmount"
    t.integer "ColumnAmount"
    t.string "ProductLine"
    t.integer "ElevatorUnitCost"
    t.integer "ElevatorTotalCost"
    t.integer "InstallationCost"
    t.integer "TotalPrice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "employees", "users"
end
