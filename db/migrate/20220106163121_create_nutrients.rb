# frozen_string_literal: true

class CreateNutrients < ActiveRecord::Migration[6.1]
  def change
    create_table :nutrients do |t|
      t.string :name
      t.integer :plan_id
      t.integer :phase_id
      t.integer :amount_per_feeding
      # add a manufatucrer column
      # add a composition column

      t.timestamps
    end
  end
end
