# frozen_string_literal: true

class CreatePhases < ActiveRecord::Migration[6.1]
  def change
    create_table :phases do |t|
      t.string  :name
      t.integer :crop_id, null: false, foreign_key: true
      t.text    :description

      t.timestamps
    end
  end
end
