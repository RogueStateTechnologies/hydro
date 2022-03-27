# frozen_string_literal: true

class CreatePhases < ActiveRecord::Migration[6.1]
  def change
    create_table :phases do |t|
      t.string  :name
      t.integer :plan_id
      t.text    :description

      t.timestamps
    end
  end
end
