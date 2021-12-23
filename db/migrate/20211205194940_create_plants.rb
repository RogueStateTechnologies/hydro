class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string  :crop
      t.date    :start_date
      t.date    :estmd_harvest_date
      # a plant can have many weeks
      # a week belongs to a plant
      t.integer  :current_week
      # a plant has a grow medium
      # a grow_medium belongs to many plants
      t.integer  :grow_medium
      # a plant has a food_plan
      # a food_plan belongs to many plants
      t.integer  :food_plan
      t.string  :light_intensity
      # growth_status will be calculated based the weekly reports
      t.string  :growth_status
      # a plant can have multiple harvests
      # a harvest belongs to a plant
      t.integer :harvest

      t.timestamps
    end
  end
end
