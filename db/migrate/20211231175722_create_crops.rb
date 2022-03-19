# frozen_string_literal: true

class CreateCrops < ActiveRecord::Migration[6.1]
  def change
    create_table :crops do |t|
      t.string :name
      t.text   :description
      # add a scientific_name column?

      t.timestamps
    end
  end
end
