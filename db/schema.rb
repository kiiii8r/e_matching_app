# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_07_032402) do

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.bigint "age_id_id", null: false
    t.bigint "gender_id_id", null: false
    t.bigint "prefecture_id_id", null: false
    t.bigint "language_id_id", null: false
    t.bigint "role_id_id", null: false
    t.string "image"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["age_id_id"], name: "index_users_on_age_id_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["gender_id_id"], name: "index_users_on_gender_id_id"
    t.index ["language_id_id"], name: "index_users_on_language_id_id"
    t.index ["prefecture_id_id"], name: "index_users_on_prefecture_id_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id_id"], name: "index_users_on_role_id_id"
  end

end
