# frozen_string_literal: true

class CreatePhases < ActiveRecord::Migration[6.1]
  def change
    create_table :phases do |t|
      t.string  :name
      t.integer :duration
      t.integer :plan_id
      t.text    :description
      t.integer :feed_frequency
      # add a column for light schedule

      t.timestamps
    end
  end
end
