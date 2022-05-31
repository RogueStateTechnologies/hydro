# frozen_string_literal: true

class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.boolean :published

      t.string  :origin
      t.string  :environment
      t.string  :medium
      t.string  :light_system

      t.integer :container_size
      t.integer :feedings_per_week

      t.integer :user_id, null: false, foreign_key: true
      t.integer :crop_id, null: false, foreign_key:true
      t.integer :phase_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
