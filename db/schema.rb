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

ActiveRecord::Schema.define(version: 2022_02_16_234707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "harvest_reports", force: :cascade do |t|
    t.integer "height"
    t.integer "weight_wet_in_grams"
    t.integer "weight_dry_in_grams"
    t.integer "total_wattage_used"
    t.integer "total_water_used_in_milileters"
    t.integer "water_per_gram_in_milileters"
    t.integer "wattage_per_gram"
    t.integer "reportable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "health_reports", force: :cascade do |t|
    t.integer "reportable_id"
    t.string "plant_image"
    t.integer "height_in_centimeters"
    t.integer "air_humidity"
    t.integer "light_schedule"
    t.integer "day_air_temp"
    t.integer "night_air_temp"
    t.integer "watering_volume_per_day"
    t.integer "container_size"
    t.integer "ph"
    t.text "diagnosis"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "media", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nutrients", force: :cascade do |t|
    t.string "name"
    t.integer "plan_id"
    t.integer "phase_id"
    t.integer "amount_per_feeding"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phases", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.integer "plan_id"
    t.text "description"
    t.integer "feed_frequency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "crop_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plant_reports", force: :cascade do |t|
    t.integer "plant_id"
    t.string "reportable_type"
    t.bigint "reportable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reportable_type", "reportable_id"], name: "index_plant_reports_on_reportable"
  end

  create_table "plants", force: :cascade do |t|
    t.integer "user_id"
    t.integer "crop_id"
    t.integer "variant_id"
    t.integer "medium_id"
    t.integer "light_wattage"
    t.integer "plan_id"
    t.integer "phase_id"
    t.date "start_date"
    #give a published column
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  #look into user priveleges
  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "crop_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
