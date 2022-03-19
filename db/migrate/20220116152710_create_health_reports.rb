# frozen_string_literal: true

class CreateHealthReports < ActiveRecord::Migration[6.1]
  def change
    create_table :health_reports do |t|
      # different health reports based on the phase?
      t.integer :reportable_id
      t.string :plant_image
      # this will be handled by active storage
      t.integer :height_in_centimeters
      t.integer :air_humidity
      # does this matter?
      t.integer :light_schedule
      # this should be tied to the plant or the plan, not the health report
      t.integer :day_air_temp
      t.integer :night_air_temp
      # combine these two into average?
      t.integer :watering_volume_per_day
      # could this also be movec to the plan?
      t.integer :container_size
      # also should be tied to the plant
      t.integer :ph
      t.text :diagnosis
      t.text :comments
      # last_feeding_date
      # 

      t.timestamps
    end
  end
end
