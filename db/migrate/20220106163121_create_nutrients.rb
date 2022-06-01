# frozen_string_literal: true

class CreateNutrients < ActiveRecord::Migration[6.1]
  def change
    create_table :nutrients do |t|
      t.string :name
      t.string :manufacturer
      t.string :compound

      t.integer :crop_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
