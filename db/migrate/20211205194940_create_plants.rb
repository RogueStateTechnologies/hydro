# frozen_string_literal: true

class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.integer :user_id
      t.integer :crop_id
      t.integer :variant_id
      t.integer :medium_id
      t.string  :light_system
      t.integer :container_size
      t.integer :plan_id
      t.integer :phase_id
      t.integer :week_id
      t.date    :start_date
      t.date    :next_notification_date

      t.timestamps
    end
  end
end
