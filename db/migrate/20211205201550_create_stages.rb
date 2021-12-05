class CreateStages < ActiveRecord::Migration[6.1]
  def change
    create_table :stages do |t|
      # belongs_to a feed_plan
      t.integer :feed_plan
      # used to calculate cost of a food_plan along
      t.integer :mililiter_per_gallon
      # not sure how this is measured but ties into operational costs
      t.integer :light_intensity
      # used to calculate cost of a food_plan along
      t.integer :number_of_feedings
      t.integer :stage_cost_in_pennies

      t.timestamps
    end
  end
end
