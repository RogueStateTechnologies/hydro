class CreateYields < ActiveRecord::Migration[6.1]
  def change
    create_table :yields do |t|
      t.date :harvest_date
      t.integer :cost_in_pennies
      t.integer :weight_in_grams
      # belongs to a plant
      t.integer :plant_id
      t.integer :value_per_weight_in_pennies
      t.integer :profit_in_pennies

      t.timestamps
    end
  end
end
