# frozen_string_literal: true

class CreateNutrients < ActiveRecord::Migration[6.1]
  def change
    create_table :nutrients do |t|
      t.string :name
      t.integer :plan_id
      t.integer :phase_id
      t.string :manufacturer
      t.string :composition

      t.timestamps
    end
  end
end
