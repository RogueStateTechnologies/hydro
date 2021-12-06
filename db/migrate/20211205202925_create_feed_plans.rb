class CreateFeedPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :feed_plans do |t|

      t.string  :name
      t.integer :stage_one_id
      t.integer :stage_one_cost_in_pennies
      t.integer :stage_two_id
      t.integer :stage_two_cost_in_pennies
      t.integer :stage_three_id
      t.integer :stage_three_cost_in_pennies
      t.integer :unit_size_in_mililiters
      t.integer :unit_cost_in_pennies

      t.timestamps
    end
  end
end
