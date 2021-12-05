class CreateHarvests < ActiveRecord::Migration[6.1]
  def change
    create_table :harvests do |t|
      t.date :date
      t.integer :num_plants
      t.integer :expected_yield
      t.integer :actual_yield
      t.integer :cost_per_weight_in_pennies
      t.integer :value_per_weight_in_pennies
      t.integer :profit_expected_in_pennies
      t.integer :profit_actual_in_pennies

      t.timestamps
    end
  end
end
