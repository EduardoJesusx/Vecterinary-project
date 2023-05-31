# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_30_204249) do
  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.text "observation"
    t.integer "pet_owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_owner_id"], name: "index_animals_on_pet_owner_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "observation"
    t.integer "status"
    t.datetime "scheduled"
    t.integer "pet_owner_id", null: false
    t.integer "veterinary_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_owner_id"], name: "index_exams_on_pet_owner_id"
    t.index ["veterinary_id"], name: "index_exams_on_veterinary_id"
  end

  create_table "pet_owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "cell_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veterinaries", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "animals", "pet_owners"
  add_foreign_key "exams", "pet_owners"
  add_foreign_key "exams", "veterinaries"
end
