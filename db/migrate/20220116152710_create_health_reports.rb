# frozen_string_literal: true

class CreateHealthReports < ActiveRecord::Migration[6.1]
  def change
    create_table :health_reports do |t|
      t.integer :plant_id
      t.integer :height_in_centimeters
      t.integer :average_air_temp
      t.integer :ph
      t.text :diagnosis
      t.text :comments

      t.timestamps
    end
  end
end
