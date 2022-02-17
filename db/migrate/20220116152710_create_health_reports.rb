# frozen_string_literal: true

class CreateHealthReports < ActiveRecord::Migration[6.1]
  def change
    create_table :health_reports do |t|
      t.integer :reportable_id
      t.string :plant_image
      t.integer :height_in_centimeters
      t.integer :air_humidity
      t.integer :light_schedule
      t.integer :day_air_temp
      t.integer :night_air_temp
      t.integer :watering_volume_per_day
      t.integer :container_size
      t.integer :ph
      t.text :diagnosis
      t.text :comments

      t.timestamps
    end
  end
end
