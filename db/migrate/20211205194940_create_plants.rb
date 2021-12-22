class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.date   :start_date
      t.boolean :harvested
      t.string :current_stage
      t.string :grow_medium
      t.string :nutrient_mix
      t.string :light_intensity
      t.string :growth_track
      t.string :plant_notes

      t.timestamps
    end
  end
end
