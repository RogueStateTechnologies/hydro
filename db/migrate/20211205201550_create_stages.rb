class CreateStages < ActiveRecord::Migration[6.1]
  def change
    create_table :stages do |t|
      t.integer :feed_plan
      t.integer :mix_per_feeding_in_mililiters
      t.integer :light_intensity_in_wattage
      t.integer :duration_in_weeks
      t.integer :feedings_per_week
      t.integer :mix_usage_in_mililiters

      t.timestamps
    end
  end
end
