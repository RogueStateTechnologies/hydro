# frozen_string_literal: true

class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.integer :crop_id

      t.timestamps
    end
  end
end
