# frozen_string_literal: true

class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string  :origin
      t.string  :environment
      t.string  :medium
      t.integer :user_id, null: false, foreign_key: true
      t.integer :crop, null: false, foreign_key:true
      t.string  :light_system
      t.integer :container_size
      t.integer :plan, null: false, foreign_key: true
      t.integer :phase, null: false, foreign_key: true
      t.boolean :published
      t.integer :feedings_per_week

      t.timestamps
    end
  end
end
