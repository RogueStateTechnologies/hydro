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

ActiveRecord::Schema.define(version: 2021_12_05_205807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feed_plans", force: :cascade do |t|
    t.string "name"
    t.integer "stage_one_id"
    t.integer "stage_one_cost_in_pennies"
    t.integer "stage_two_id"
    t.integer "stage_two_cost_in_pennies"
    t.integer "stage_three_id"
    t.integer "stage_three_cost_in_pennies"
    t.integer "unit_size_in_mililiters"
    t.integer "unit_cost_in_pennies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "harvests", force: :cascade do |t|
    t.date "date"
    t.integer "num_plants"
    t.integer "expected_yield"
    t.integer "actual_yield"
    t.integer "cost_per_weight_in_pennies"
    t.integer "value_per_weight_in_pennies"
    t.integer "profit_expected_in_pennies"
    t.integer "profit_actual_in_pennies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.date "start_date"
    t.boolean "harvested"
    t.string "current_stage"
    t.string "grow_medium"
    t.string "nutrient_mix"
    t.string "light_intensity"
    t.string "growth_track"
    t.string "plant_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stages", force: :cascade do |t|
    t.integer "feed_plan"
    t.integer "mix_per_feeding_in_mililiters"
    t.integer "light_intensity_in_wattage"
    t.integer "duration_in_weeks"
    t.integer "feedings_per_week"
    t.integer "mix_usage_in_mililiters"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "feed_plan"
    t.integer "stage"
    t.integer "plant"
    t.string "performance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "yields", force: :cascade do |t|
    t.date "harvest_date"
    t.integer "cost_in_pennies"
    t.integer "weight_in_grams"
    t.integer "plant_id"
    t.integer "value_per_weight_in_pennies"
    t.integer "profit_in_pennies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
