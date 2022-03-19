# frozen_string_literal: true

class CreatePhases < ActiveRecord::Migration[6.1]
  def change
    create_table :phases do |t|
      t.string  :name
      t.integer :duration
      # should duration be in_weeks or in_days?
      t.integer :plan_id
      t.text    :description
      t.integer :feed_frequency
      # how is feeding_frequency determined?
      # add a column for light_schedule
      # water_per_feeding column?

      t.timestamps
    end
  end
end
